//
//  ThirdViewController.swift
//  ProtocolClass20122022
//
//  Created by Bharat Silavat on 21/12/22.
//

import UIKit

class sUser: NSObject {

    var fname: String?

    var lName: String?

    

    init(fname: String, lName: String) {

        self.fname = fname
        self.lName = lName

    }

}
class ThirdViewController : UIViewController, TableViewDataSourceDelegate {
    
    

        func cellForRow(at indexPath: IndexPath) -> UITableViewCell {

            let cell = self.tableView.dequeueReusableCell(withIdentifier: "customCellId", for: indexPath) as! myThirdTableViewCell
            cell.myButton.addTarget(self, action:( {(indexpath:IndexPath)-> String in var printDetail = "Print\(indexPath.row)"
                return printDetail }, for: UIControl.Event.touchUpInside)
            cell.myButton.addTarget(self, action: #selector(myBtnAction(indexSec: indexPath)), for: .touchUpInside)
           // cell.myButton.addAction(myBtnAction(indexSec: indexPath), for: .touchUpInside)
            return cell
        }
        
        @objc func myBtnAction(indexSec:IndexPath) {
            print("ThisButonIsOnSectionNo:\(indexSec.section) , RowNO:\(indexSec.row)")
        }
 
        func design(cell: UITableViewCell, for data: Any) {

            guard let user = data as? sUser else {

                return

            }
            cell.textLabel?.text = user.fname
            cell.detailTextLabel?.text = user.lName

        }
   
       
        

        @IBOutlet weak var tableView: UITableView!

        var tableViewDataSource: TableViewDataSource?

        override func viewDidLoad() {

            super.viewDidLoad()

            let user1 = sUser(fname: "Amit", lName: "Ninawe")

            let user2 = sUser(fname: "Swapnil", lName: "Sahare")

            let user3 = sUser(fname: "Bharat", lName: "Silavat")

            let user4 = sUser(fname: "Uday", lName: "Patil")

            let data = [[user1, user2, user3, user4]]

            self.tableViewDataSource = TableViewDataSource(data: data, delegate: self)

            self.tableView.dataSource = self.tableViewDataSource


        }

 

    }


class myThirdTableViewCell:UITableViewCell{
    
    
    @IBOutlet weak var myButton:UIButton!

    
}
