//
//  UIComponentsViewController.swift
//  Practice
//
//  Created by Bharat Silavat on 12/12/22.
//

import UIKit

enum ComponentsType: String {
    case button = "UIButton"
    case label = "UILabel"
    case imageView = "UIImageView"
}

class UIComponentsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ComponentTableViewCellDelegate {

    @IBOutlet weak var componentTable: UITableView!
    var dataDict: [Int:Int] = [1: 5, 2: 10, 3: 30]
    var strDict: [String: [String]] = ["Vowel": ["A", "E", "I", "O", "U"], "Consonants": ["B","C","D","F","G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X"], "Numbers": ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]]
    
    var componentArray: [ComponentsType] = [.button, .label, .imageView]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return componentArray.count
    }
    // ["Vowel": ["A", "E", "I", "O", "U"], "Consonants": ["B","C","D","F","G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X"], "Numbers": ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]]
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ComponentTableViewCell", for: indexPath) as! ComponentTableViewCell
        cell.delegate = self
        cell.setUp(type: componentArray[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let type = componentArray[indexPath.row]
        switch type {
        case .button:
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "nextVc") as! NextViewController
            self.navigationController?.pushViewController(vc, animated: true)
        case .label:
            print("Not worked on ")
        case .imageView:
            print("Not worked on")
        }
    }
    
    func didTapGoButton(type: ComponentsType) {
        switch type {
        case .button:
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "nextVc") as! NextViewController
            self.navigationController?.pushViewController(vc, animated: true)
        case .label:
            print("Not worked on ")
        case .imageView:
            print("Not worked on")
        }
        
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        let keyArray = Array(strDict.keys)
//        let key = keyArray[section]
//        return key
//    }
    
//    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
//        return "Section No: \(section)"
//    }
}
