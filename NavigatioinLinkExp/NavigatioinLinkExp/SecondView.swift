//
//  SecondView.swift
//  NavigatioinLinkExp
//
//  Created by Mika Urakawa on 2022/03/07.
//

import SwiftUI

struct SecondView: View {
    private var viewModel = SecondViewModel()

    init() {
        print("SecondViewが初期化された")
    }

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
