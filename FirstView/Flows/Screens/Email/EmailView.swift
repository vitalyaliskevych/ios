//
//  EmailView.swift
//  FirstView
//
//  Created by Developer on 27.10.2022.
//

import SwiftUI

struct EmailView: View {
    @ObservedObject var viewModel = EmailViewModel()
    
    var body: some View {
        ZStack {

                Color.redColor.opacity(0.7)
                    .ignoresSafeArea()
            VStack {
                userText
                enterText
                bottomButton
                
            }
        }
    }
}

struct EmailView_Previews: PreviewProvider {
    static var previews: some View {
        EmailView()
    }
}

private extension EmailView {
    var userText: some View {
        ZStack {
            VStack{
                Text("Reset user")
                    .font(.system(size: 48))
                    .foregroundColor(Color.yellowColor)
                    .padding([.leading], -90)
                Spacer()
            }
        }
    }
    var enterText: some View {
        ZStack {
                Text("Please enter your email")
                    .font(.system(size: 25))
                    .foregroundColor(Color.yellowColor)
        }
        .padding(50)
    }
    var enterEmail: some View {
        ZStack {
            TextField("email", text: $viewModel.email)
                        .padding()
                        .foregroundColor(Color.black)
                        .font(.system(size: 14))
                        .frame(width: 320, height: 50)
                        .background(Color.white)
                        .cornerRadius(.infinity)
                }
    }
    
    var resetButton: some View {
        ZStack {
            Button(action: {viewModel.MooveToEmailLogin()}) {
                    Text("Reset user")
                        .foregroundColor(Color.yellowColor)
                        .font(.system(size: 14))
                        .frame(width: 320, height: 50)
                        .background(Color.white)
                        .cornerRadius(.infinity)
            }
        }
    }
    var bottomButton: some View {
        VStack(spacing: 30) {
            enterEmail
            resetButton
        }
        .padding(.bottom, 50)
    }
}
