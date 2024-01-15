//
//  OrderView.swift
//  Appetizers
//
//  Created by Francesca Capodanno on 10/01/24.
//

import SwiftUI

struct OrderView: View {
    
    //@StateObject var viewModel = OrderListViewModel()
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView {
            VStack {
                
                List {
                    ForEach(orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(PlainListStyle())
                
                Button() {
                    print("tapped")
                } label: {
                    APButton(title: "$99.99 - Place Order")
                }
                .padding(.bottom, 25)
            }
            .navigationTitle("🗒️ Orders")
        }
    }
    
    func deleteItems(at offSet: IndexSet) {
        orderItems.remove(atOffsets: offSet)
    }
}

#Preview {
    OrderView()
}
