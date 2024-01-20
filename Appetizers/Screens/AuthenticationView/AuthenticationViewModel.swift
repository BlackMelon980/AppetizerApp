//
//  AuthenticationViewModel.swift
//  Appetizers
//
//  Created by Francesca Capodanno on 19/01/24.
//

import Foundation

class AuthenticationViewModel: ObservableObject {
    
    @Published var showSignInView: Bool
    
    init() {
        let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
        showSignInView = authUser == nil
    }
}
