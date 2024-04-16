//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by Tùng on 08/04/2024.
//

import SwiftUI

@main
struct SwiftUIDemoApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
