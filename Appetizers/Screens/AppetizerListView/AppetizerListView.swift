//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Francesca Capodanno on 10/01/24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @EnvironmentObject var order: Order
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    ZStack(alignment: .bottomTrailing) {
                        AppetizerListCell(appetizer: appetizer)
                            .onTapGesture {
                                viewModel.selectedAppetizer = appetizer
                                
                                withAnimation {
                                    viewModel.isShowingDetail.toggle()
                                }
                            }
                        AddButton(action: {order.add(appetizer)})
                    }
                }
                .navigationTitle("Menu items")
                .listStyle(.plain)
                .disabled(viewModel.isShowingDetail)
            }
            .task {
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail {
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer!,
                                    isShowingDetail: $viewModel.isShowingDetail)
                .transition(.scale(scale: 0.9))
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
