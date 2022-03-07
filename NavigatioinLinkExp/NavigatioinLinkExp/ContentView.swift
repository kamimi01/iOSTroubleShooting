//
//  ContentView.swift
//  NavigatioinLinkExp
//
//  Created by Mika Urakawa on 2022/03/07.
//

import SwiftUI

struct ContentView: View {
    init() {
        print("ContentViewが初期化された")
    }

    // ContentView初期化のタイミングで、SecondViewが初期化されない
    var body: some View {
        NavigationView {
            NavigationLink(destination: LazyView(SecondView())) {
                Text("セカンドビューへ")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
