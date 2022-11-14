//
//  MainView.swift
//  FirstView
//
//  Created by Developer on 24.10.2022.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var viewModel = MainViewModel()
    
    var body: some View {
        ZStack {
            Color.redColor.opacity(0.75)
                .ignoresSafeArea()
            VStack {
                logoText
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

private extension MainView {
    var logoText: some View {
            VStack {
                Spacer()
                Text("LOGO")
                    .font(.system(size: 48))
                    .foregroundColor(Color.yellowColor)
                Spacer()
                button1
                
            }
        }
    var button1: some View {
        VStack(spacing: 30) {
            Button(action: {viewModel.MooveToLoginEmailScreen()}) {
                Text("SING UP")
                    .foregroundColor(Color.black)
                    .font(.system(size: 14))
                    .frame(width: 350, height: 50)
                    .background(Color.white)
                    .cornerRadius(.infinity)
            }
            button2
        }
        .padding()
    }
    
    var button2: some View {
        VStack(spacing: 20) {
            Button(action: {viewModel.MooveToLogin()}) {
                Text("SING IN")
                    .foregroundColor(Color.black)
                    .font(.system(size: 14))
                    .frame(width: 350, height: 50)
                    .background(Color.yellowColor.opacity(0.9))
                    .cornerRadius(.infinity)
            }
                    
        }
    }
}
