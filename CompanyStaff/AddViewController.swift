//
//  AddViewController.swift
//  CompanyStaff
//
//  Created by Pavel Koyushev on 10.10.2020.
//

import UIKit
import RealmSwift

class AddViewController: UIViewController {
    
    @IBOutlet weak var newName: UITextField!
    @IBOutlet weak var newLastName: UITextField!
    @IBOutlet weak var newMiddleName: UITextField!
    @IBAction func addButton(_ sender: UIButton) {
        addNewEmployee()
    }
    
    func addNewEmployee() {
        let realm = try! Realm()
        let employee = Employee()
        
        employee.name = newName.text!
        employee.lastName = newLastName.text!
        employee.middleName = newMiddleName.text!
        
        try! realm.write {
            realm.add(employee)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
