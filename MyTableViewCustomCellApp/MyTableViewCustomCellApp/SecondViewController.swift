//
//  SecondViewController.swift
//  MyTableViewCustomCellApp
//
//  Created by Bharat Silavat on 16/12/22.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    
    var myDictArrey :[[[String:String?]]] = [[["name":"Swapnil","city":"Nagpur","age":"","phoneNumber":"324335345"],["name":"Bharat","city":"Indore","age":"23","phoneNumber":"7643875834"], ["name":"Uday","city":"Sangli","age":"25","phoneNumber":"8768786889"]],[["name":"Amit","city":"Bhandara","age":"29","phoneNumber":"464564765", "empCode": "dsf8787"],["name":"Aaswad","city":"Nagpur","age":"30","phoneNumber":"98765657676", "empCode": "dfg8799"]]]
    let sectionArray = ["Trainee", "Employee"]
    @IBOutlet weak var mySecondTableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        
        return myDictArrey.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let rowArray = myDictArrey[section]
        return rowArray.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionArray[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MySecondCell", for: indexPath) as! SecondTableViewCell
        let rowArray = myDictArrey[indexPath.section]
        let row = rowArray[indexPath.row]
        cell.customizeUI(with: row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let rowArray = myDictArrey[indexPath.section]
        let row = rowArray[indexPath.row]
        var height: CGFloat = 0.0
        for key in Array(row.keys) {
            if let value = row[key], value?.count ?? 0 > 0 {
                height = height + 30
            }
        }
        return height + 10.0
    }
    
    
    
}
