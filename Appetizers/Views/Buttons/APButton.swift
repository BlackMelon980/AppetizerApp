//
//  APButton.swift
//  Appetizers
//
//  Created by Francesca Capodanno on 11/01/24.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .background(.brandPrimary)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "Test title")
}
