//
//  Model.swift
//  CompanyStaff
//
//  Created by Pavel Koyushev on 10.10.2020.
//

import Foundation
import RealmSwift

class Employee: Object {
    @objc dynamic var name = String()
    @objc dynamic var lastName = String()
    @objc dynamic var middleName = String()
    
    var fullName: String { // read-only properties are automatically ignored
            return "\(lastName) \(name) \(middleName)"
        }
}
