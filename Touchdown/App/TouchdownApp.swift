//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Nahyun on 2023/04/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
