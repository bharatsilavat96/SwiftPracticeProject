//
//  ViewController.swift
//  MySampleTableView
//
//  Created by Bharat Silavat on 13/12/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var myTable:UITableView!
    
    
    var dataDict: [Int:Int] = [1: 5, 2: 10, 3: 30]
    
    var strDict: [String: [String]] = ["Vowel": ["A", "E", "I", "O", "U"], "Consonants": ["B","C","D","F","G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X"], "Numbers": ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]] // KEYS ARE STRING AND VLAUES ARE IN ARRAY OF STRING
    
    //    var mydict :[Int:Int] = [1:5,2:10,3:30]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
//
//        return strDict.keys.count
        return strDict.keys.count + 1
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let value = dataDict[section] ?? 0
        
//        let key = Array(strDict.keys)[section]

        return value
//        return String(value )
    }
//
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//
//
//
//
//
//
//
//
//
////        var mykeys : [String] = []
////        for i in strDict.keys {
////            mykeys.append(i)
//////            print(i)
////        }
////
////        return mykeys[section]
//    }
    
//    var keyCount = [Int]()
//    var keys = [String]()
    // emplimenting DataSource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        //  [1: 5, 2: 10, 3: 30]
        
   // indexpath  =  A.Section , B.Row .
   // for current situation section is equal to keys and when we access key the value of that key will be shown .
   // section is like "for in loops (i) " this value iterate over collection ....
        
        let value = dataDict[section] ?? 0
       
        return value
        
        
//        switch section {
//
//        case 0:
//            return 10
//        case 1:
//            return 5
//        case 2 :
//            return 7
//        default :
//            return 50
//
//        }

        
        
        
//           for (key, value) in strDict {
//
//               keys.append(key)
//               keyCount.append(value.count)
//           }
//           return keyCount[section]
    }
    
    
    
//           for (key, value) in strDict {
//
//               keys.append(key)
//               keyCount.append(value.count)
//           }
//           return keyCount[section]
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCustomCell")
        
        cell!.textLabel!.text = "My Section: \(indexPath.section), and Row : \(indexPath.row)"
        cell!.detailTextLabel?.text = "My detail textLable:\(indexPath)"
        return cell!
    }
}

