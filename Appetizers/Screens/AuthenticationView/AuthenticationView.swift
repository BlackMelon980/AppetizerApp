//
//  AuthenticationView.swift
//  Appetizers
//
//  Created by Francesca Capodanno on 19/01/24.
//

import SwiftUI

struct AuthenticationView: View {
    
    @StateObject var viewModel = AuthenticationViewModel()
    
    var body: some View {
        HStack {
            if viewModel.showSignInView {
                LoginView(authViewModel: viewModel)
            } else {
                AccountView(authViewModel: viewModel)
            }
        }
    }
}

extension View {
   @ViewBuilder
   func `if`<Content: View>(_ conditional: Bool, content: (Self) -> Content) -> some View {
        if conditional {
            content(self)
        } else {
            self
        }
    }
}


#Preview {
    AuthenticationView()
}
