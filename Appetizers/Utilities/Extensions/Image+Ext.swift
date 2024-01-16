//
//  Image+Ext.swift
//  Appetizers
//
//  Created by Francesca Capodanno on 16/01/24.
//

import SwiftUI

extension Image {
    func imageListCellModifier() -> some View {
        self
            .aspectRatio(contentMode: .fit)
            .frame(width: 120, height: 90)
            .cornerRadius(8)
    }
}
