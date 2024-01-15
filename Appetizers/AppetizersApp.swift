//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Francesca Capodanno on 10/01/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
