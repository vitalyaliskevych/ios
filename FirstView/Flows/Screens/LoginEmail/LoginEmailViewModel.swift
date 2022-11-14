//
//  LoginEmailViewModel.swift
//  FirstView
//
//  Created by Developer on 27.10.2022.
//

import Foundation

class LoginEmailViewModel: ObservableObject {
    enum Result {
        case navigationBack
    }
    
    var onResult: ((Result) -> Void)?
    
    func navigationBack() {
        onResult?(.navigationBack)
    }
}
