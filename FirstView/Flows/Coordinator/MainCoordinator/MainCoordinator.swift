//
//  MainCoordinator.swift
//  FirstView
//
//  Created by Developer on 25.10.2022.
//

import Foundation

class MainCoordinator: ObservableObject {
    enum Route {
        case loginScreen(loginCoordinator: LoginCoordinator)
        case autorisation(loginEmailCoordinator: LoginEmailCoordinator)
    }
    
    @Published var route: Route?
    
    var viewModel: MainViewModel
    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
        viewModel.onResult = { [weak self] result in
            switch result {
            case .navigationOneScreen:
                self?.moveToLoginScreen()
            case .navigationLoginEmailScreen:
                self?.mooveToLoginEmail()
            }
        }
    }
    func moveToLoginScreen() {
        let coordinator = LoginCoordinator(loginView: LoginViewModel())
        route = .loginScreen(loginCoordinator: coordinator)
    }
    
    func mooveToLoginEmail() {
        let coordinator = LoginEmailCoordinator(viewModel: LoginEmailViewModel())
        coordinator.onResult = {[weak self] result in
            switch result {
                
            case .navigationBack:
                self?.route = nil
            }
            
        }
        route = .autorisation(loginEmailCoordinator: coordinator)
    }
}


