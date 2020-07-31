//
//  IndexApp.swift
//  Index
//
//  Created by Pao Yu on 2020-07-31.
//

import SwiftUI

@main
struct IndexApp: App {
    
    @StateObject var model: IndexModel = IndexModel()
    @StateObject var viewModel: IndexViewModel = IndexViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
                .environmentObject(viewModel)
        }
    }
}
