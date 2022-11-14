//
//  FirstViewApp.swift
//  FirstView
//
//  Created by Developer on 24.10.2022.
//

import SwiftUI

@main
struct FirstViewApp: App {
    var body: some Scene {
        WindowGroup {
            MainCoordinatorView(coordinator: MainCoordinator(viewModel: MainViewModel()))
        }
    }
}
