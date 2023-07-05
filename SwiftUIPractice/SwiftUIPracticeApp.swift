//
//  SwiftUIPracticeApp.swift
//  SwiftUIPractice
//
//  Created by Shanim on 20/04/23.
//

import SwiftUI

@main
struct SwiftUIPracticeApp: App {

    var coffeeVM = CoffeeViewModel()

    var body: some Scene {
        WindowGroup {
            StartingView()
                .environmentObject(coffeeVM)
        }
    }
}
