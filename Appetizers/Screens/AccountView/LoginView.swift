//
//  LoginView.swift
//  Appetizers
//
//  Created by Francesca Capodanno on 18/01/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30,  style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.firstColorGradient, .lastColorGradient], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 1000, height: 400)
                .rotationEffect(.degrees(135))
                .offset(y: -350)
            
            VStack(spacing: 20) {
                Text("Welcome")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .offset(x: -100, y: -100)
                
                TextField("Email",
                          text: $email,
                          prompt: Text("Email")
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.371))
                    .bold())
                .foregroundColor(.black)
                .textFieldStyle(.plain)
                
                
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.black)
                
                SecureField("Password",
                            text: $password,
                            prompt: Text("Password")
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.371))
                    .bold())
                .foregroundColor(.black)
                .textFieldStyle(.plain)
                
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.black)
                
                Button {
                    // sign up
                } label: {
                    Text("Sign up")
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
                
                Button {
                    // login
                } label: {
                    Text("Already have an account? Login")
                        .bold()
                        .foregroundColor(.black)
                }
                .padding(.top)
                .offset(y:110)
            }
            .frame(width: 350)
        }
        //.ignoresSafeArea()
    }
}

#Preview {
    LoginView()
}
