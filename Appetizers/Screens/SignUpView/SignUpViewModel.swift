//
//  SignUpViewModel.swift
//  Appetizers
//
//  Created by Francesca Capodanno on 19/01/24.
//

import Foundation

final class SignUpViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signUp() {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found.")
            return
        }
        
        Task {
            do {
                let returnedUserDate = try await AuthenticationManager.shared.createUser(email: email, password: password)
                print("Success")
                print(returnedUserDate)
                
            } catch {
                print("error: \(error)")
            }
        }
    }
}
