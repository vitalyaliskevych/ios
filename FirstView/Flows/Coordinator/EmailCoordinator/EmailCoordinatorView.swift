//
//  EmailCoordinatorView.swift
//  FirstView
//
//  Created by Developer on 29.10.2022.
//

import SwiftUI
import SwiftUINavigation

struct EmailCoordinatorView:  View {
    @ObservedObject var coordinator: EmailCoordinator
    
    var body: some View {
        NavigationView {
            ZStack {
                EmailView(viewModel: coordinator.viewModel)
            }
//            NavigationLink(unwrapping: $coordinator.route, case: /EmailCoordinator.Route.navigationTwoScreen, destination: {(coordinator: Binding<EmailCoordinator>) in
//                LoginCoordinator(coordinator: coordinator.wrappedValue)
//            }, onNavigate: {_ in }) {}
        }
    }
}
