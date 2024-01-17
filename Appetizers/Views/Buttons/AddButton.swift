//
//  AddButton.swift
//  Appetizers
//
//  Created by Francesca Capodanno on 16/01/24.
//

import SwiftUI

struct AddButton: View {
    
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }) {
            Image(systemName: "plus")
                .imageScale(.small)
                .frame(width: 35, height: 35)
                .background(.white)
                .foregroundColor(.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: Color.gray.opacity(0.5), radius: 2)
        }
        .buttonStyle(ScaleButtonStyle())
        
    }
}


struct ScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .scaleEffect(configuration.isPressed ? 1.5 : 1)
    }
}


#Preview {
    AddButton(action: {print("press me")})
}
