//
//  Shield Sliders.swift
//  Blue vs Red Hack war
//
//  Created by Jansen Rondael on 5/10/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit
@IBDesignable
class Shield_Sliders: UISlider {
    
    @IBInspectable var ThumbImage: UIImage? {
        didSet {
            setThumbImage(ThumbImage, for: .normal)
        
        }
    }
    @IBInspectable var thumbHighlight: UIImage? {
        didSet {
            setThumbImage(thumbHighlight, for: .highlighted)
        }
    }
   

}
