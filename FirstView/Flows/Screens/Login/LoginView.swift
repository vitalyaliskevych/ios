//
//  LoginView.swift
//  FirstView
//
//  Created by Developer on 24.10.2022.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewModel = LoginViewModel()
    
    var body: some View {
        ZStack {
            Color.redColor.opacity(0.7)
                .ignoresSafeArea()
            VStack {
                Spacer()
                userName
                password
                bottomButton
                singButton
                }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

extension LoginView {
    var userName: some View {
        VStack {
            HStack {
                Text("UserName")
                Spacer()
            }
            .padding([.leading], 40)
            TextField("", text: $viewModel.username)
            Divider()
                .frame(height: 2)
                .background(Color.white)
                .padding([.leading], 40)
                .padding([.trailing], 20)
        }
    }
    
    var password: some View {
        VStack {
            HStack {
                Text("Password")
                Spacer()
            }
            .padding([.leading], 40)
            TextField("", text: $viewModel.username)
            Divider()
                .frame(height: 2)
                .background(Color.black)
                .padding([.leading], 40)
                .padding([.trailing], 20)
        }
    }
    var bottomButton: some View {
        VStack(spacing: 15) {
            buttonReset
            buttonLogin
            Text("OR")
        }
    }
    var buttonReset: some View {
        HStack {
            Spacer()
            Button(action: {}) {
                Text("Forgot password?")
            }
        }
        .padding([.trailing], 10)
    }
    var buttonLogin: some View {
        Button(action: {}) {
            Text("Log In")
                .foregroundColor(Color.black)
                .font(.system(size: 14))
                .frame(width: 350, height: 50)
                .background(Color.white)
                .cornerRadius(.infinity)
        }
    }
    var singButton: some View {
        HStack(spacing: 60) {
            phone
            google
        }
    }
    var phone: some View {
        Button(action: {}) {
            HStack {
                Image("Phone")
                    .resizable()
                    .frame(width: 26, height: 28)
                Text("Phone")
                
            }
            .foregroundColor(Color.black)
            .font(.system(size: 14))
            .frame(width: 115, height: 45)
            .background(Color.white)
            .cornerRadius(.infinity)
        }
    }
    var google: some View {
        Button(action: {}) {
            HStack {
                Image("Google")
                    .resizable()
                    .frame(width: 26, height: 28)
                Text("Google+")
            }
            .foregroundColor(Color.black)
            .font(.system(size: 14))
            .frame(width: 115, height: 45)
            .background(Color.white)
            .cornerRadius(.infinity)
        }
    }
}
