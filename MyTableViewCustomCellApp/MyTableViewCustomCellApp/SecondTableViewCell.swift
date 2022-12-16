//
//  SecondTableViewCell.swift
//  MyTableViewCustomCellApp
//
//  Created by Bharat Silavat on 16/12/22.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var keyLbl1:UILabel!
    @IBOutlet weak var valueLbl1:UILabel!
    @IBOutlet weak var keyLbl2:UILabel!
    @IBOutlet weak var valueLbl2:UILabel!
    @IBOutlet weak var keyLbl3:UILabel!
    @IBOutlet weak var valueLbl3:UILabel!
    @IBOutlet weak var keyLbl4:UILabel!
    @IBOutlet weak var valueLbl4:UILabel!
    @IBOutlet weak var keyLbl5:UILabel!
    @IBOutlet weak var valueLbl5:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func customizeUI(with dict: [String: String?]) {
        let keyArray = Array(dict.keys)
        //print(dict)
        
        for key in keyArray {
            if let value = dict[key], value?.count ?? 0 > 0 {
                let bound = UIScreen.main.bounds
                let singleView = SingleElementView(frame: CGRect(x: 0, y: 0, width: bound.width, height: 30))
                singleView.setupView(with: key, detail: value ?? "")
                self.stackView.addArrangedSubview(singleView)
            }
        }
//        if keyArray.count > 0 {
//            let key1 = keyArray[0]
//            if let value1 = dict[key1], value1?.count ?? 0 > 0 {
//                keyLbl1.text = key1
//                valueLbl1.text = value1
//            } else {
//                keyLbl1.isHidden = true
//                valueLbl1.isHidden = true
//            }
//        } else {
//            keyLbl1.isHidden = true
//            valueLbl1.isHidden = true
//        }
//
//        if keyArray.count > 1 {
//            let key2 = keyArray[1]
//            if let value2 = dict[key2], value2?.count ?? 0 > 0 {
//                keyLbl2.text = key2
//                valueLbl2.text = value2
//            } else {
//                keyLbl2.isHidden = true
//                valueLbl2.isHidden = true
//            }
//        }else {
//            keyLbl2.isHidden = true
//            valueLbl2.isHidden = true
//        }
//
//        if keyArray.count > 2 {
//            let key3 = keyArray[2]
//            if let value3 = dict[key3], value3?.count ?? 0 > 0 {
//                keyLbl3.text = key3
//                valueLbl3.text = value3
//            } else {
//                keyLbl3.isHidden = true
//                valueLbl3.isHidden = true
//            }
//
//        } else {
//            keyLbl3.isHidden = true
//            valueLbl3.isHidden = true
//        }
//
//        if keyArray.count > 3 {
//            let key4 = keyArray[3]
//            if let value4 = dict[key4], value4?.count ?? 0 > 0 {
//                keyLbl4.text = key4
//                valueLbl4.text = value4
//            } else {
//                keyLbl4.isHidden = true
//                valueLbl4.isHidden = true
//            }
//
//        } else {
//            keyLbl4.isHidden = true
//            valueLbl4.isHidden = true
//        }
//
//        if keyArray.count > 4 {
//            let key5 = keyArray[4]
//            if let value5 = dict[key5], value5?.count ?? 0 > 0 {
//                keyLbl5.text = key5
//                valueLbl5.text = value5
//            } else {
//                keyLbl5.isHidden = true
//                valueLbl5.isHidden = true
//            }
//
//        } else {
//            keyLbl5.isHidden = true
//            valueLbl5.isHidden = true
//        }
        
    }

}
