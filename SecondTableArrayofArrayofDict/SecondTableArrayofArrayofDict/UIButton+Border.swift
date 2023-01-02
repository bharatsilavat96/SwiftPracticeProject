//
//  UIButton+Border.swift
//  SecondTableArrayofArrayofDict
//
//  Created by Bharat Silavat on 21/12/22.
//

import Foundation
import UIKit

extension UIButton {
    
    var cornerRadius: CGFloat {
        set {
            self.layer.cornerRadius = newValue
        }
        
        get {
            return self.layer.cornerRadius
        }
    }
    
    func setDefaultValues() {
        self.layer.cornerRadius = 5.0
        self.layer.borderColor = UIColor.red.cgColor
        self.layer.borderWidth = 1.0
    }
}
