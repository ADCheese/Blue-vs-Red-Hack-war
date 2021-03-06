//
//  ViewController.swift
//  Blue vs Red Hack war
//
//  Created by Jansen Rondael on 3/19/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,UITextFieldDelegate {
    var player:AVAudioPlayer = AVAudioPlayer()
    @IBOutlet weak var RedHacker: UITextField! {
        didSet{
        RedHacker.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
    }
}
    @IBOutlet weak var RedLabel: UILabel! {
        didSet{
            RedHacker.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
    }
    }
    @IBOutlet weak var BlueLabel: UILabel!
    @IBOutlet weak var BlueHacker: UITextField!
    @IBOutlet weak var RedShield: UILabel! {
        didSet{
        RedShield.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        }
    }
    @IBOutlet weak var BluesShield: UILabel!
    
    
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
    
    @IBOutlet weak var ButtonOutlet7: UIButton!
    @IBOutlet weak var ButtonOutlet8: UIButton!
    @IBOutlet weak var ButtonOutlet9: UIButton!
    @IBOutlet weak var ButtonOutlet10: UIButton!
    @IBOutlet weak var ButtonOutlet11: UIButton!
    @IBOutlet weak var ButtonOutlet12: UIButton!
    
    
    
    @IBOutlet weak var horizontalSlider3: UISlider!
    @IBOutlet weak var horizontalSlider4: UISlider!
    @IBOutlet weak var horizontalSlider2: UISlider!
    @IBOutlet weak var horizontalSlider: UISlider!
    
    
    
    
    
    
    @IBOutlet weak var verticalSlider4: UISlider! {
        didSet {
            verticalSlider4.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi/2))
        }
    }
    @IBOutlet weak var verticalSlider3: UISlider! {
        didSet {
            verticalSlider3.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi/2))
        }
    }
    
    
    @IBOutlet weak var verticalSlider1: UISlider! {
        didSet{
            
            verticalSlider1.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi/2))
        }
    }
    @IBOutlet weak var verticalSlider2: UISlider! {
        didSet{
            verticalSlider2.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi/2))
            
        }
    }
    func RedAllOn() -> Bool {
        if SwitchOutlet6.isOn && SwitchOutlet7.isOn && SwitchOutlet8.isOn && SwitchOutlet9.isOn && SwitchOutlet10.isOn {
            self.horizontalSlider4.alpha = 1
            self.horizontalSlider3.alpha = 1
            self.verticalSlider4.alpha = 1
            self.verticalSlider3.alpha = 1
            self.RedShield.alpha = 1
            self.SwitchOutlet6.alpha = 0
            self.SwitchOutlet7.alpha = 0
            self.SwitchOutlet8.alpha = 0
            self.SwitchOutlet9.alpha = 0
            self.SwitchOutlet10.alpha = 0
        
            return true
        }else{
            return false
        }
    }
    
    func BlueAllOn() -> Bool {
        
        if SwitchOutlet1.isOn && SwitchOutlet2.isOn && SwitchOutlet3.isOn && SwitchOutlet4.isOn && SwitchOutlet5.isOn {
            self.horizontalSlider.alpha = 1
            self.horizontalSlider2.alpha = 1
            self.verticalSlider1.alpha = 1
            self.verticalSlider2.alpha = 1
            self.BluesShield.alpha = 1
            self.SwitchOutlet1.alpha = 0
            self.SwitchOutlet2.alpha = 0
            self.SwitchOutlet3.alpha = 0
            self.SwitchOutlet4.alpha = 0
            self.SwitchOutlet5.alpha = 0
            
            return true
        }else{
            
            
            return false
        }
    }
    
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
            Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { (timer) in
                self.ButtonOutlet1.alpha = 1
                self.ButtonOutlet7.alpha = 1
            }
            
            
        }
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do
        {
            let audioPath = Bundle.main.path(forResource: "cyber", ofType: "mp3")
            try player = AVAudioPlayer (contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch
            
        {
            //ERROR
        }
        self.player.play()
        
        
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
        BlueAllOn()
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
        BlueAllOn()
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
        BlueAllOn()
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
        BlueAllOn()
    }
    
    @IBAction func Switch5(_ sender: UISwitch) {
        if (sender.isOn) {
            
            SwitchOutlet4.setOn(false, animated: true)
        }else{
            SwitchOutlet4.setOn(true, animated: true)
            SwitchOutlet1.setOn(true, animated: true)
            SwitchOutlet2.setOn(true, animated: true)
        }
        BlueAllOn()
    }
    
    
    
    @IBAction func Switch6(_ sender: UISwitch) {
        if (sender.isOn) {
            
            SwitchOutlet9.setOn(false, animated: true)
        }else{
            SwitchOutlet9.setOn(true, animated: true)
            SwitchOutlet6.setOn(true, animated: true)
            SwitchOutlet7.setOn(true, animated: true)
        }
       RedAllOn()
        
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
        RedAllOn()
        
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
        RedAllOn()
        
        
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
        RedAllOn()
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
        RedAllOn()
        
    }
    
    
    
    @IBAction func Button1(_ sender: UIButton) {
        self.ButtonOutlet2.alpha = 1
        self.ButtonOutlet1.alpha = 0
        
        
        
    }
    
    @IBAction func Button2(_ sender: UIButton) {
        self.ButtonOutlet2.alpha = 0
        self.ButtonOutlet3.alpha = 1
        
        
        
    }
    
    @IBAction func Button3(_ sender: UIButton) {
        self.ButtonOutlet3.alpha = 0
        self.ButtonOutlet4.alpha = 1
        
        
        
    }
    
    @IBAction func Button4(_ sender: UIButton) {
        self.ButtonOutlet4.alpha = 0
        self.ButtonOutlet5.alpha = 1
        
        
        
    }
    
    @IBAction func Button5(_ sender: UIButton) {
        self.ButtonOutlet6.alpha = 1
        self.ButtonOutlet5.alpha = 0
        
        
        
    }
    
    @IBAction func Button6(_ sender: UIButton) {
        
        self.ButtonOutlet6.alpha = 0
        self.SwitchOutlet1.alpha = 1
        self.SwitchOutlet2.alpha = 1
        self.SwitchOutlet3.alpha = 1
        self.SwitchOutlet4.alpha = 1
        self.SwitchOutlet5.alpha = 1
    }
    
    
    @IBAction func Button7(_ sender: UIButton) {
        self.ButtonOutlet7.alpha = 0
        self.ButtonOutlet8.alpha = 1
        
    }
    @IBAction func Button8(_ sender: UIButton) {
        
        self.ButtonOutlet8.alpha = 0
        self.ButtonOutlet9.alpha = 1
    }
    
    @IBAction func Button9(_ sender: UIButton) {
        self.ButtonOutlet9.alpha = 0
        self.ButtonOutlet10.alpha = 1
    }
    
    @IBAction func Button10(_ sender: UIButton) {
        
        self.ButtonOutlet10.alpha = 0
        self.ButtonOutlet11.alpha = 1
        
    }
    
    @IBAction func Button11(_ sender: UIButton) {
        self.ButtonOutlet12.alpha = 1
        self.ButtonOutlet11.alpha = 0
    }
    
    
    @IBAction func Button12(_ sender: UIButton) {
        self.ButtonOutlet12.alpha = 0
        self.SwitchOutlet6.alpha = 1
        self.SwitchOutlet7.alpha = 1
        self.SwitchOutlet8.alpha = 1
        self.SwitchOutlet9.alpha = 1
        self.SwitchOutlet10.alpha = 1
    }
    
    @IBAction func ActionSlider(_ sender: UISlider) {
        let value = sender.value
        
        if verticalSlider1.value == 0 && verticalSlider2.value == 0 &&
            horizontalSlider.value == 0 && horizontalSlider2.value == 0
            
        {
            let alert = UIAlertController(title: "Red Hacker Got Hacked!", message:"\(BlueHacker.text!)", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Play Again?", style: .default, handler: { (action) in
                
                self.BlueHacker.alpha = 1
                self.RedHacker.alpha = 1
                self.RedShield.alpha = 0
                self.BluesShield.alpha = 0
                
                
                
            }))
            self.present(alert,animated: true, completion: nil)
        }
        
        
        
        
    }
    @IBAction func ActionSlider2(_ sender: UISlider) {
        let value = sender.value
        
        if verticalSlider3.value == 1 &&
            verticalSlider4.value == 1 && horizontalSlider3.value == 0 && horizontalSlider4.value == 0
        {
            let alert = UIAlertController(title: "Blue Hacker Got Hacked!", message:"\(RedHacker.text!)", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Play Again?", style: .default, handler: { (action) in
                
                self.BlueHacker.alpha = 1
                self.RedHacker.alpha = 1
                self.RedShield.alpha = 0
                self.BluesShield.alpha = 0
                self.RedLabel.text = ""
                self.BlueLabel.text = ""
                self.RedLabel.alpha = 0
                self.BlueLabel.alpha = 0
                self.horizontalSlider.alpha = 0
                self.horizontalSlider2.alpha = 0
                self.verticalSlider1.alpha = 0
                self.verticalSlider2.alpha = 0
                
            }))
            self.present(alert,animated: true, completion: nil)
        }
        
        
    }
}
