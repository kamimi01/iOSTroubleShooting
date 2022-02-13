import UIKit

class MyObjectToObserve: NSObject {
    @objc dynamic var myDate = NSDate(timeIntervalSince1970: 0) // 1970

    func updateDate() {
        myDate = myDate.addingTimeInterval(Double(2 << 30))  // 68年プラスする
    }
}

class MyObserver: NSObject {
    @objc var objectToObserve: MyObjectToObserve
    var observation: NSKeyValueObservation?

    init(object: MyObjectToObserve) {
        objectToObserve = object
        super.init()

        observation = observe(
            \.objectToObserve.myDate,
             options: [.old, .new]  // 変更前と変更後の値を監視する。必要なければなくても問題ない
        ) { object, change in
            print("myDate changed from: \(change.oldValue!), updated to: \(change.newValue!)")
        }
    }
}

let observed = MyObjectToObserve()
let observer = MyObserver(object: observed)

// 値を変更する
observed.updateDate()
