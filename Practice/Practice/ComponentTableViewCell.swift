//
//  ComponentTableViewCell.swift
//  Practice
//
//  Created by Bharat Silavat on 12/12/22.
//

import UIKit

protocol ComponentTableViewCellDelegate {
    func didTapGoButton(type: ComponentsType)
}

class ComponentTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var goButton: UIButton!
    var componentType: ComponentsType?
    var delegate: ComponentTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUp(type: ComponentsType) {
        self.componentType = type
        self.nameLabel.text = type.rawValue
    }

    @IBAction func goButtonTapped() {
        guard let delegate = delegate,
        let type = self.componentType else {return}
        delegate.didTapGoButton(type: type)
    }
}
