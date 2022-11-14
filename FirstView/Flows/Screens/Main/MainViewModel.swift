//
//  MainViewModel.swift
//  FirstView
//
//  Created by Developer on 24.10.2022.
//

import Foundation

class MainViewModel: ObservableObject {
    
    enum Result {
        case navigationOneScreen
        case navigationLoginEmailScreen
    }
    var onResult: ((Result) -> Void)?
    
    func MooveToLogin() {
        onResult?(.navigationOneScreen)
    }
    
    func MooveToLoginEmailScreen() {
        onResult?(.navigationLoginEmailScreen)
    }
}

