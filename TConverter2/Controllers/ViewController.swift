//
//  ViewController.swift
//  TConverter2
//
//  Created by mac on 29.11.2019.
//  Copyright © 2019 Sergey Malakhov. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var smLabel: UILabel!
    @IBOutlet weak var mLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 1000
            slider.minimumValue = 0
            slider.value = 0
        }
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let sm = Int(round(sender.value))
        smLabel.text = "\(sm) cm"
        
        let m = String(format: "%.3F", sender.value / 100)
        mLabel.text = "\(m) m"
       }
}

