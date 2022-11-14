//
//  LoginCoordinator.swift
//  FirstView
//
//  Created by Developer on 25.10.2022.
//

import Foundation

class LoginCoordinator: ObservableObject {
    enum Route {
        case navigationMain
    }
    
    @Published var route: Route?
    var loginView: LoginViewModel
    init(loginView: LoginViewModel) {
        self.loginView = loginView
        loginView.onResult = {[weak self] result in
            switch result {
            case .navigationMain:
                break
            }
        }
    }
}
