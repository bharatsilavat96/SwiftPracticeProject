//
//  CustomTableViewCell.swift
//  SecondTableArrayofArrayofDict
//
//  Created by Bharat Silavat on 15/12/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var firstLbl:UILabel!
    @IBOutlet weak var secondLbl:UILabel!
    @IBOutlet weak var thirdLbl:UILabel!
    @IBOutlet weak var fourthLbl:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
