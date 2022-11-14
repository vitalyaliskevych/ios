//
//  EmailViewModel.swift
//  FirstView
//
//  Created by Developer on 27.10.2022.
//

import Foundation

class EmailViewModel: ObservableObject {
    @Published var email = String()
    
    enum Result {
        case navigationEmail
    }
    var onResult: ((Result) -> Void)?
    
    func MooveToEmailLogin() {
        onResult?(.navigationEmail)
    }
}
