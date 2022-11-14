//
//  LoginEmailCoordinatorView.swift
//  FirstView
//
//  Created by Developer on 29.10.2022.
//

import SwiftUI
import SwiftUINavigation

struct LoginEmailCoordinatorView: View {
    @ObservedObject var coordinator: LoginEmailCoordinator
    var body: some View {
        NavigationView {
            ZStack {
                LoginEmailView(viewModel: coordinator.viewModel)
            }
        }
    }
}

