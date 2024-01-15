//
//  User.swift
//  Appetizers
//
//  Created by Francesca Capodanno on 15/01/24.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
