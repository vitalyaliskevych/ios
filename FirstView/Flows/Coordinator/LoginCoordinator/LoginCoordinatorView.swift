//
//  LoginCoordinatorView.swift
//  FirstView
//
//  Created by Developer on 25.10.2022.
//

import SwiftUI
import SwiftUINavigation

struct LoginCoordinatorView: View {
    @ObservedObject var coordinator: LoginCoordinator
    var body: some View {
        NavigationView {
            ZStack {
                LoginView(viewModel: coordinator.loginView)
            }
        }
    }
}

