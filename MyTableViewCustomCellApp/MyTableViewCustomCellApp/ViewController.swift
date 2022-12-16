//
//  ViewController.swift
//  MyTableViewCustomCellApp
//
//  Created by Bharat Silavat on 15/12/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  

    
    @IBOutlet weak var myTableViewCustom : UITableView!
    
    
    var myarrayOfDict : [[String:[String]]] = [["MP":["Bhopal","Sagar","Indore","Ujjain","Devas","Sehore","Videsha"]],["UP":["Firojabad","Delhi","Agra","Ayodhya"]],["Himahcal":["Solan","Shimla","Kullu","Manali","Chamba"]],["Chattisgarh":["Ambikapur","Bhilai","bilaspur","Dhamatri","Raipur"]],["Gujrat":["Ahmadabad","Amreli","Bhuruch","Dwarka","Gandhinagar","JamnaNagar"]],["Hariyana":["Ambala","Bhiwani","Faridabad","GuruGram","Panipat"]],["Jammua":["Anantnag","Baramula","Gulmarg","Jammu","Kathua","Punch","Rajouri"]]]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myarrayOfDict.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! MyTableViewCustomCell
        
        let mynewArrayOfSections = myarrayOfDict[indexPath.row]
//        print(mynewArrayOfSections)
        let myKeys = mynewArrayOfSections.keys
//        print(myKeys)
        let myKeyInArray = Array(myKeys)[0]
        print(myKeyInArray)
        let values = mynewArrayOfSections[myKeyInArray]! // assiging array of keys to array of section so that indexpath will work accordingly
//        print(values)
//        let myValuesofKeys = ""
        var myValuesOfValues = ""
        for i in values{
            myValuesOfValues.append(i)
//            print(i)
        }
        cell.firstLbl.text = " \(myValuesOfValues)"
        cell.secondLbl.text = "Bharat Silavat"
        cell.thirdLbl.text = "Bharat Silavat Third label"
        cell.fourthLbl.text = "Bharat Silavat Fourth Label"
        return cell
    }
 
}

