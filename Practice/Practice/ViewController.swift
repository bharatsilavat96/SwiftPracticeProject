//
//  ViewController.swift
//  Practice
//
//  Created by Bharat Silavat on 07/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstBtn:UIButton!
    @IBOutlet var secondBtn:UIButton!
    @IBOutlet var thirdBtn:UIButton!
    @IBOutlet var fourthButton:UIButton!
    @IBOutlet var fifthBtn:UIButton!
    @IBOutlet var sixthBtn:UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        firstBtn.layer.borderWidth = 2
        firstBtn.layer.masksToBounds = true
        firstBtn.layer.cornerRadius = 15
        firstBtn.layer.borderColor = UIColor.cyan.cgColor
        firstBtn.tintColor = UIColor.brown
        
        secondBtn.layer.masksToBounds = true
        secondBtn.layer.cornerRadius = 20
        
        thirdBtn.layer.masksToBounds = true
        thirdBtn.layer.cornerRadius = thirdBtn.frame.height/2
        
        fourthButton.setTitle("Fourth Button", for: .normal)
        fourthButton.backgroundColor = .blue
        fourthButton.setTitleColor(.red, for: .normal)

        
        fifthBtn.layer.masksToBounds = true
        fifthBtn.clipsToBounds = true
//        fifthBtn.backgroundColor = .red
        fifthBtn.layer.cornerRadius = thirdBtn.frame.width/2
         
        sixthBtn.layer.borderWidth = 2
        sixthBtn.layer.borderColor = UIColor.blue.cgColor
        sixthBtn.isSpringLoaded = true
        

    }
    
    @IBOutlet weak var sampleButtonj: UIButton!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func takeAction() {
        
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
     
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "nextVc") as! NextViewController
            self.navigationController?.pushViewController(vc, animated: true)
            
        
//        switch button.tag {
//        case 1:
//            print("Button 1")
//        case 2:
//            print("Button 2")
//        default:
//            print("no button")
//        }
    }
    
    
    
    @IBAction func firstBtnAction(sender:UIButton){
       
        
    }
 
    
    @IBAction func segmentValueChanged(_ sender: Any) {
    }
    @IBAction func textfieldDidEndEditing(_ sender: Any) {
        
    }
}

