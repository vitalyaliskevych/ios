//
//  MainCoordinatorView.swift
//  FirstView
//
//  Created by Developer on 25.10.2022.
//

import SwiftUI
import SwiftUINavigation

struct MainCoordinatorView: View {
    @ObservedObject var coordinator: MainCoordinator
    var body: some View {
        NavigationView {
            ZStack {
                MainView(viewModel: coordinator.viewModel)
                NavigationLink(unwrapping: $coordinator.route, case: /MainCoordinator.Route.loginScreen, destination: {(coordinator: Binding<LoginCoordinator>) in
                    LoginCoordinatorView(coordinator: coordinator.wrappedValue) 
                }, onNavigate: {_ in }) {}
                NavigationLink(unwrapping: $coordinator.route, case: /MainCoordinator.Route.autorisation, destination: {(coordinator: Binding<LoginEmailCoordinator>) in
                    LoginEmailCoordinatorView(coordinator: coordinator.wrappedValue) .navigationBarHidden(true)
                }, onNavigate: {_ in}) {}
            }
        }
    }
}



