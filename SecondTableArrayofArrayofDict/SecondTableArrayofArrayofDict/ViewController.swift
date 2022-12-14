//
//  ViewController.swift
//  SecondTableArrayofArrayofDict
//
//  Created by Bharat Silavat on 15/12/22.
//

import UIKit

extension ViewController:  UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
      
        return myDictArrey.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       
        let sectionRowArray = myDictArrey[section]
        print(sectionRowArray) //[["A":"Swapnil"],["B":"Sagar"],["C":"Suraj"],["D":"Shubham"]]
        let rowDict = sectionRowArray[section].keys
        print(rowDict) // ["B":"Sagar"] for IndexPath.row = 1  => ["B"]
        let key = Array(rowDict)[0]
        
        return "MySectionNo:\(key)"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        let myDictArray1 = myDictArrey[section]
        let myDict = myDictArray1.count
        return myDict
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! CustomTableViewCell
                let sectionRowArray = myDictArrey[indexPath.section]
                print(sectionRowArray) //[["A":"Swapnil"],["B":"Sagar"],["C":"Suraj"],["D":"Shubham"]]
                let rowDict = sectionRowArray[indexPath.row]
                print(rowDict) // ["B":"Sagar"] for IndexPath.row = 1  => ["B"]
                let key = Array(rowDict.keys)[0]
                print(rowDict)
                let value1 = rowDict[key]!
                print(value1)
        cell.firstLbl.text = "\(value1)"
        cell.secondLbl.text = "\(key)"
//        cell.thirdLbl.text = "\(value1)"
//        cell.fourthLbl.text = "\(key))"
//        cell.textLabel?.text = "\(key)"
//        cell.detailTextLabel?.text = "\(value1)"
        return cell
    }
    
}

class ViewController: UIViewController, UITableViewDelegate {
 

    lazy var myDictArrey :[[[String:String]]] = {
        return [[["A":"Swapnil"],["B":"Sagar"],["C":"Suraj"],["D":"Shubham"]],[["E":"Akash"],["F":"Amit"],["G":"Amol"],["H":"Sameer"]]]
    }()
    
    
    @IBOutlet weak var myTableView:UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
    }
    
    lazy var table: UITableView = {
        let view = UITableView(frame: .zero, style: .plain)
        return view
    }()
    
    var fName: String = ""
    var lName: String = ""
    
    var fullName: String {
        set {
            let str = newValue
            let strArray = str.split(separator: " ")
            if strArray.count > 0 {
                self.fName = String(strArray[0])
            }
            if strArray.count > 1 {
                self.lName = String(strArray[1])
            }
        }
        
        get {
            return "\(fName) \(lName)"
        }
    }
    

    

    
    

}

