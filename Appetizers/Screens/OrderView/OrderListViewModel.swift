//
//  OrderListViewModel.swift
//  Appetizers
//
//  Created by Francesca Capodanno on 15/01/24.
//

import Foundation
import SwiftUI

final class OrderListViewModel: ObservableObject {
    @Published var orders: [Appetizer] = []
    
}
