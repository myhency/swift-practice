//
//  AuthViewModel.swift
//  CleanArchitecture
//
//  Created by James on 2023/03/28.
//

import Foundation

class AuthViewModel: ObservableObject {
    let mainViewModel: MainViewModel
    
    init(mainViewModel: MainViewModel) {
        self.mainViewModel = mainViewModel
    }
}
