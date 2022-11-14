//
//  EmailCoordinator.swift
//  FirstView
//
//  Created by Developer on 29.10.2022.
//

import Foundation

class EmailCoordinator: ObservableObject {
    enum Route {
        case navigationTwoScreen(loginCoordinator: LoginCoordinator)
    }
    
    @Published var route: Route?
    
    var viewModel: EmailViewModel
    init(viewModel: EmailViewModel) {
        self.viewModel = viewModel
        viewModel.onResult = { [weak self] result in
            switch result {
            case .navigationEmail:
                break
            }
        }
        
        func mooveToLoginEmail() {
            let coordinator = LoginCoordinator(loginView: LoginViewModel())
            route = .navigationTwoScreen(loginCoordinator: coordinator)
        }
    }
    
    
}
