//
//  LoginViewModel.swift
//  Appetizers
//
//  Created by Francesca Capodanno on 19/01/24.
//

import Foundation
import SwiftUI
import Firebase

final class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var userIsLoggedIn = false
    
    func signIn() {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found.")
            return
        }
        
        Task {
            do {
                let returnedUserDate = try await AuthenticationManager.shared.signIn(email: email, password: password)
                print("Success")
                print(returnedUserDate)
            } catch {
                print("error: \(error)")
            }
        }
    }
}
