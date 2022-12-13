//
//  ViewController.swift
//  myFirstTableViewMaximess
//
//  Created by Bharat Silavat on 12/12/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
   

    
    @IBOutlet var myTableView:UITableView!
    
    
    
    var myCallListArray = ["Bharat","Shivang","Silavat","Vinod","Shivang","Narendra","Khanna","Raj","Indire","Namrita","Suneel","Kerrti","Ajay","nelesh","Vishnu","rajni","Neteash","Namrita","Janki","Pooja","Sooraj"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "My Table_View"
       
        
        
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        
        return "My Header No \(section)"
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Its my Footer No :\(section)"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCallListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableView", for: indexPath)
        cell.textLabel?.text = myCallListArray[indexPath.row]
        cell.detailTextLabel?.text = "MyDetail\(indexPath)"
        return cell
    }
    


}

