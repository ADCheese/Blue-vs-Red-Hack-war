//
//  ViewController.swift
//  Blue vs Red Hack war
//
//  Created by Jansen Rondael on 3/19/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var RedHacker: UITextField!
    @IBOutlet weak var RedLabel: UILabel!
    @IBOutlet weak var BlueLabel: UILabel!
    @IBOutlet weak var BlueHacker: UITextField!
    
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == RedHacker {
            RedLabel.text = RedHacker.text
             self.RedHacker.alpha = 0
            self.RedLabel.alpha = 1
            return true
            
        }else{
            BlueLabel.text = BlueHacker.text
            self.BlueHacker.alpha = 0
            self.BlueLabel.alpha = 1
        }
        return true
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
   
    @IBAction func Button1(_ sender: UISwitch) {
        if (sender.isOn == true) {
            
        }else{
            
        }
    }
    
    @IBAction func Button2(_ sender: UISwitch) {
    }
    
    @IBAction func Button3(_ sender: UISwitch) {
    }
    @IBAction func Button4(_ sender: UISwitch) {
    }
    
    @IBAction func Button5(_ sender: UISwitch) {
    }
    

}

