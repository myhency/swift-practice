//
//  ContentView.swift
//  CleanArchitecture
//
//  Created by James on 2023/03/28.
//

import SwiftUI

struct MainView: View {
    @StateObject var mainViewModel: MainViewModel
    
    init(mainViewModel: MainViewModel) {
        _mainViewModel = StateObject(wrappedValue: mainViewModel)
    }
    
    var body: some View {
        if mainViewModel.homeScreenIsReady {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }
            .padding()
        } else {
            AuthScreen(authViewModel: AuthViewModel(mainViewModel: mainViewModel))
        }
    }
}

// MARK: - Previews

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(mainViewModel: MainViewModel())
    }
}
