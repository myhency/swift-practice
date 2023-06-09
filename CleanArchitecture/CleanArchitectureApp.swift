//
//  CleanArchitectureApp.swift
//  CleanArchitecture
//
//  Created by James on 2023/03/28.
//

import SwiftUI

@main
struct CleanArchitectureApp: App {
    var body: some Scene {
        let mainViewModel = MainViewModel()
        WindowGroup {
            MainView(mainViewModel: mainViewModel)
        }
    }
}
