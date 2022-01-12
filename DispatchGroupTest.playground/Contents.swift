import UIKit

// - seeAlso: 

func getItems(
    itemIds: [String],
    completionHandler: @escaping ([String]) -> Void
) {
    var items = [String]()
    let group = DispatchGroup()
    
    for id in itemIds {
        group.enter()
        getItemDetail(id) { result in
            defer {
                group.leave()
            }
            guard let result = result else {
                return
            }
            items.append(result)
            print("ループの中")
        }
    }
    
    group.notify(queue: .main) {
        print("ループ全部終わった\n-------------")
        completionHandler(items)
    }
}

func getItemDetail(
    _ id: String,
    completionHandler: @escaping (String?) -> Void
) {
    Thread.sleep(forTimeInterval: 0.5)
    print("0.5秒待機中")
    calcPrice(id) { result in
        completionHandler(id)
    }
}

func calcPrice(
    _ id: String,
    completionHandler: @escaping (String?) -> Void
) {
    if !id.isEmpty {
        Thread.sleep(forTimeInterval: 0.5)
        completionHandler(id)
        return  // ここを忘れていたので
    }
    // こちらのcompletionHandlerも呼ばれてしまった
    completionHandler(nil)
}

// -----------------------------------

let itemIds = ["1", "2", "3", "", ""]

getItems(itemIds: itemIds) { result in
    print(result)
}
