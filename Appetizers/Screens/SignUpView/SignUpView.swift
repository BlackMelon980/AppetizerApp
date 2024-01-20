//
//  SignUpView.swift
//  Appetizers
//
//  Created by Francesca Capodanno on 19/01/24.
//

import SwiftUI

struct SignUpView: View {
    
    @StateObject var viewModel = SignUpViewModel()
    @ObservedObject var authViewModel: AuthenticationViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                RoundedRectangle(cornerRadius: 30,  style: .continuous)
                    .foregroundStyle(.linearGradient(colors: [.firstColorGradient, .lastColorGradient], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 1000, height: 400)
                    .rotationEffect(.degrees(135))
                    .offset(y: -350)
                
                VStack(spacing: 20) {
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                        .offset(x: -100, y: -100)
                    
                    TextField("Email",
                              text: $viewModel.email,
                              prompt: Text("Email")
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.371))
                        .bold())
                    .foregroundColor(.black)
                    .textFieldStyle(.plain)
                    
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(.black)
                    
                    SecureField("Password",
                                text: $viewModel.password,
                                prompt: Text("Password")
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.371))
                        .bold())
                    .foregroundColor(.black)
                    .textFieldStyle(.plain)
                    
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(.black)
                    
                    Button {
                        viewModel.signUp()
                        authViewModel.showSignInView = false
                        
                    } label: {
                        Text("Sign Up")
                            .bold()
                            .frame(width: 200, height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(.linearGradient(colors: [.firstColorGradient, .lastColorGradient], startPoint: .top, endPoint: .bottomTrailing))
                            )
                            .foregroundColor(.white)
                    }
                    .padding(.top)
                    .offset(y:100)
                    
                }
                .frame(width: 350)
            }
            //.ignoresSafeArea()
            
        }
    }
}

#Preview {
    SignUpView(authViewModel: AuthenticationViewModel())
}
