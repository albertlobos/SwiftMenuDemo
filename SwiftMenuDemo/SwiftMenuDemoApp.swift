//
//  SwiftMenuDemoApp.swift
//  SwiftMenuDemo
//
//  Created by Albert Villalobos on 11/23/23.
//

import SwiftUI

@main
struct SwiftMenuDemoApp: App {
    @StateObject var order = Order();

    var body: some Scene {
        WindowGroup {
            mainView()
                .environmentObject(order);
        }
    }
}
