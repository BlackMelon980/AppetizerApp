//
//  Order.swift
//  Appetizers
//
//  Created by Francesca Capodanno on 15/01/24.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItems(at offSet: IndexSet) {
        items.remove(atOffsets: offSet)
    }
    
    
}
