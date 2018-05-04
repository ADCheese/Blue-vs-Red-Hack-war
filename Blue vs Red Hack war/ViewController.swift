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
    
    
    @IBOutlet weak var SwitchOutlet1: UISwitch!
    @IBOutlet weak var SwitchOutlet2: UISwitch!
    @IBOutlet weak var SwitchOutlet3: UISwitch!
    @IBOutlet weak var SwitchOutlet4: UISwitch!
    @IBOutlet weak var SwitchOutlet5: UISwitch!
    
    @IBOutlet weak var SwitchOutlet6: UISwitch!
    @IBOutlet weak var SwitchOutlet7: UISwitch!
    @IBOutlet weak var SwitchOutlet8: UISwitch!
    @IBOutlet weak var SwitchOutlet9: UISwitch!
    @IBOutlet weak var SwitchOutlet10: UISwitch!
    
    
    @IBOutlet weak var ButtonOutlet1: UIButton!
    @IBOutlet weak var ButtonOutlet2: UIButton!
    @IBOutlet weak var ButtonOutlet3: UIButton!
    @IBOutlet weak var ButtonOutlet4: UIButton!
    @IBOutlet weak var ButtonOutlet5: UIButton!
    @IBOutlet weak var ButtonOutlet6: UIButton!
    
    
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
    
    @IBAction func Switch1(_ sender: UISwitch) {
        
        if (sender.isOn) {
            SwitchOutlet2.setOn(true, animated: true)
            SwitchOutlet1.setOn(false, animated: true)
            SwitchOutlet3.setOn(false, animated: true)
        }else{
            SwitchOutlet2.setOn(false, animated: true)
            SwitchOutlet1.setOn(true, animated: true)
            SwitchOutlet4.setOn(true, animated: true)
            
        }
    }
    
    
    @IBAction func Switch2(_ sender: UISwitch) {
        if (sender.isOn) {
            SwitchOutlet4.setOn(false, animated: true)
            SwitchOutlet2.setOn(true, animated: true)
            SwitchOutlet3.setOn(false, animated: true)
        } else {
            
            SwitchOutlet1.setOn(false, animated: true)
            SwitchOutlet5.setOn(true, animated: true)
        }
    }
    
    @IBAction func Switch3(_ sender: UISwitch) {
        if (sender.isOn) {
            SwitchOutlet5.setOn(true, animated: true)
            
            SwitchOutlet4.setOn(true, animated: true)
            SwitchOutlet1.setOn(true, animated: true)
        }else{
            SwitchOutlet2.setOn(false, animated: true)
            SwitchOutlet3.setOn(true, animated: true)
        }
    }
    
    @IBAction func Switch4(_ sender: UISwitch) {
        if (sender.isOn) {
            SwitchOutlet4.setOn(false, animated: true)
            SwitchOutlet5.setOn(false, animated: true)
            SwitchOutlet2.setOn(true, animated: true)
            
        }else{
            SwitchOutlet1.setOn(true, animated: true)
            SwitchOutlet5.setOn(false, animated: true)
            SwitchOutlet3.setOn(true, animated: true)
            SwitchOutlet4.setOn(true, animated: true)
        }
    }
    
    @IBAction func Switch5(_ sender: UISwitch) {
        if (sender.isOn) {
            
            SwitchOutlet4.setOn(false, animated: true)
        }else{
            SwitchOutlet4.setOn(true, animated: true)
            SwitchOutlet1.setOn(true, animated: true)
            SwitchOutlet2.setOn(true, animated: true)
        }
    }
    
    
    
    @IBAction func Switch6(_ sender: UISwitch) {
        if (sender.isOn) {
            
            SwitchOutlet9.setOn(false, animated: true)
        }else{
            SwitchOutlet9.setOn(true, animated: true)
            SwitchOutlet6.setOn(true, animated: true)
            SwitchOutlet7.setOn(true, animated: true)
        }
        
    }
    @IBAction func Switch7(_ sender: UISwitch) {
        
        if (sender.isOn) {
            SwitchOutlet9.setOn(false, animated: true)
            SwitchOutlet10.setOn(false, animated: true)
            SwitchOutlet7.setOn(true, animated: true)
            
        }else{
            SwitchOutlet6.setOn(true, animated: true)
            SwitchOutlet10.setOn(false, animated: true)
            SwitchOutlet8.setOn(true, animated: true)
            SwitchOutlet9.setOn(true, animated: true)
            SwitchOutlet7.setOn(false, animated: true)
        }
        
    }
    @IBAction func Switch8(_ sender: UISwitch) {
        
        if (sender.isOn) {
            SwitchOutlet10.setOn(true, animated: true)
            
            SwitchOutlet9.setOn(true, animated: true)
            SwitchOutlet6.setOn(true, animated: true)
        }else{
            SwitchOutlet7.setOn(false, animated: true)
            SwitchOutlet8.setOn(true, animated: true)
        }
        
        
    }
    @IBAction func Switch9(_ sender: UISwitch) {
        if (sender.isOn) {
            SwitchOutlet9.setOn(false, animated: true)
            SwitchOutlet7.setOn(true, animated: true)
            SwitchOutlet8.setOn(false, animated: true)
        } else {
            SwitchOutlet6.setOn(false, animated: true)
            SwitchOutlet10.setOn(true, animated: true)
            SwitchOutlet9.setOn(true, animated: true)
        }
    }
    
    @IBAction func Switch10(_ sender: UISwitch) {
        
        if (sender.isOn) {
            SwitchOutlet7.setOn(true, animated: true)
            SwitchOutlet6.setOn(false, animated: true)
            SwitchOutlet8.setOn(false, animated: true)
        }else{
            SwitchOutlet7.setOn(false, animated: true)
            SwitchOutlet6.setOn(true, animated: true)
            SwitchOutlet9.setOn(true, animated: true)
            
        }
        
    }
    
    
    
    @IBAction func Button1(_ sender: UIButton) {
        
        
        
    }
    
    @IBAction func Button2(_ sender: UIButton) {
        
        
        
    }
    
    @IBAction func Button3(_ sender: UIButton) {
        
        
        
    }
    
    @IBAction func Button4(_ sender: UIButton) {
        
        
        
    }
    
    @IBAction func Button5(_ sender: UIButton) {
        
        
        
    }
    
    @IBAction func Button6(_ sender: UIButton) {
        
        
        
    }
    
    
    
}

