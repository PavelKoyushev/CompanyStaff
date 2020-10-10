//
//  ViewController.swift
//  CompanyStaff
//
//  Created by Pavel Koyushev on 10.10.2020.
//

import UIKit
import RealmSwift

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    var staff = [String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return staff.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CSTableViewCell
        cell.fullNameLabel.text = staff[indexPath.row]
        
        return cell
    }
    
    func fetch() {
        let realm = try! Realm()
        let employee = realm.objects(Employee.self)
        
        for person in employee {
            staff.append(person.fullName)
            tableView.reloadData()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        fetch()
        // Do any additional setup after loading the view.
    }
    
}

