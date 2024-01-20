//
//  DataManager.swift
//  Appetizers
//
//  Created by Francesca Capodanno on 19/01/24.
//

import Foundation
import Firebase

class DataManager: ObservableObject {
    
    @Published var user = User()
    
    func getUser(email: String) {
        let db = Firestore.firestore()
        let ref = db.collection("User")
        
        
    }
}
