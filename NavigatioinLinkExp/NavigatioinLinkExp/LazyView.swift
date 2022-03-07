//
//  LazyView.swift
//  NavigatioinLinkExp
//
//  Created by Mika Urakawa on 2022/03/07.
//

import Foundation
import SwiftUI

struct LazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }

    var body: Content {
        build()
    }
}
