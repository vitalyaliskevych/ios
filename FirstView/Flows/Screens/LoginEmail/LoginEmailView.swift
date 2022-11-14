//
//  LoginEmailView.swift
//  FirstView
//
//  Created by Developer on 27.10.2022.
//

import SwiftUI

struct LoginEmailView: View {
    @ObservedObject var viewModel = LoginEmailViewModel()
    var body: some View {
        ZStack {
            Color.redColor.opacity(0.7)
                .ignoresSafeArea()
            VStack {
                welcomeText
                Spacer()
            }
        }
    }
}

struct LoginEmailView_Previews: PreviewProvider {
    static var previews: some View {
        LoginEmailView()
    }
}

private extension LoginEmailView {
    var welcomeText: some View {
        VStack {
            ZStack {
                Text("Welcome my friend")
                    .foregroundColor(Color.yellowColor)
                    .font(.system(size: 36))
                Spacer()
            }  .padding(120)
            Spacer()
            goodbyeText
            logoutBotton
        }
    }
    
    var goodbyeText: some View {
        ZStack {
            Text("Goodbye")
                .foregroundColor(Color.yellowColor)
                .font(.system(size: 47))
            Spacer()
        }
    }
    
    var logoutBotton: some View {
        ZStack {
            Button(action: {viewModel.navigationBack()}) {
                Text("Logout")
                    .foregroundColor(Color.black)
                    .font(.system(size: 14))
                    .frame(width: 320, height: 50)
                    .background(Color.white)
                    .cornerRadius(.infinity)
            }
            .padding(50)
        }
    }
}
