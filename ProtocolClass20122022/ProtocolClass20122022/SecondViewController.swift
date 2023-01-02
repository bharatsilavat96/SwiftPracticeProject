//
//  SecondViewController.swift
//  ProtocolClass20122022
//
//  Created by Bharat Silavat on 21/12/22.
//

import UIKit

class User: NSObject {

    var fname: String?

    var lName: String?

    

    init(fname: String, lName: String) {

        self.fname = fname

        self.lName = lName

    }

}
    class SecondViewController: UIViewController, TableViewDataSourceDelegate {

        

        func cellForRow(at indexPath: IndexPath) -> UITableViewCell {

            let cell = self.tableView.dequeueReusableCell(withIdentifier: "User", for: indexPath)

            return cell

        }

        

        func design(cell: UITableViewCell, for data: Any) {

            guard let user = data as? User else {

                return

            }

            cell.textLabel?.text = user.fname

            cell.detailTextLabel?.text = user.lName

        }


     

        @IBOutlet weak var tableView: UITableView!

        var tableViewDataSource: TableViewDataSource?

        override func viewDidLoad() {

            super.viewDidLoad()

            let user1 = User(fname: "Amit", lName: "Ninawe")

            let user2 = User(fname: "Swapnil", lName: "Sahare")

            let user3 = User(fname: "Bharat", lName: "Silavat")

            let user4 = User(fname: "Uday", lName: "Patil")

            let data = [[user1, user2, user3, user4]]

            self.tableViewDataSource = TableViewDataSource(data: data, delegate: self)

            self.tableView.dataSource = self.tableViewDataSource

          
        }

      
    }

