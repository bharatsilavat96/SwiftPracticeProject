//
//  NextViewController.swift
//  Practice
//
//  Created by Bharat Silavat on 08/12/22.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .cyan
        // Do any additional setup after loading the view.
    }
    
    @IBAction func moveToNext(){
        
        
        let SecondVC = self.storyboard?.instantiateViewController(withIdentifier: "vc3") as! VC3ViewController
        present(SecondVC, animated: true)
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
