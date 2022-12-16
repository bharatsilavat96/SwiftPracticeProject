//
//  ViewController.swift
//  oldPractice
//
//  Created by Bharat Silavat on 13/12/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
 

    
    @IBOutlet weak var myTableView:UITableView!
    
    var sectionTitles = ["A","B","C","D","E","F","G","H"]
                         
    var strDict: [String: [String]] = ["Vowel": ["A", "E", "I", "O", "U"], "Consonants": ["B","C","D","F","G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X"], "Numbers": ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return strDict.keys.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       
        var myKeys = [String](strDict.keys)
        
        return myKeys[section]
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var keys = [String]()
        var keyCount = [Int]()
        
        for (key, value) in strDict {
        
                       keys.append(key)
                       keyCount.append(value.count)
                   }
                   return keyCount[section]
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell")
        let keyArray = Array(strDict.values) // First we made array of Values
        let key = keyArray[indexPath.section]// We took indexpath of the Values and there Section too
        let myData = key[indexPath.row]
        cell?.textLabel?.text = "\(myData)"
        return cell!
        
    }
   
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return sectionTitles
    }

    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        return sectionTitles.firstIndex(of: title)!
    }
    

}

