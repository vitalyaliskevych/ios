//
//  LoginViewModel.swift
//  FirstView
//
//  Created by Developer on 24.10.2022.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var username = String()
    @Published var password = String()

    enum Result {
        case navigationMain
    }
    var onResult: ((Result)-> Void)?
    
    func mooveTooMain() {
        onResult?(.navigationMain)
    }
}
