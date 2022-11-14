//
//  LoginEmailCoordinator.swift
//  FirstView
//
//  Created by Developer on 29.10.2022.
//

import Foundation

class LoginEmailCoordinator: ObservableObject {
    
    enum Result {
        case navigationBack
    }
    var onResult: ((Result) -> Void)?
    
    var viewModel: LoginEmailViewModel
    init(viewModel: LoginEmailViewModel) {
        self.viewModel = viewModel
        viewModel.onResult = { [weak self] result in
            switch result {
            case .navigationBack:
                self?.onResult?(.navigationBack)
            }
        }
    }
    
}

