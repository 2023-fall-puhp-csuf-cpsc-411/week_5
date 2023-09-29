//
//  ViewController.swift
//  week_5
//
//  Created by Mark D. Raden on 9/29/23.
//

import UIKit

class MySwitchDemoController: UIViewController {
    
    @IBOutlet var mySwitch: UISwitch!
    @IBOutlet var switchOnButton: UIButton!
    @IBOutlet var switchOffButton: UIButton!
    @IBOutlet var switchStatusLabel: UILabel!

    @IBAction func switchToggled (_ sw: UISwitch) {
        
        if ( sw.isOn ) {
            self.switchStatusLabel.text = "Switch is On"
        }
        else {
            self.switchStatusLabel.text = "Switch is Off"
        }
    }
    
    @IBAction func switchOffButtonClicked(_ b: UIButton) {
        self.mySwitch.isOn = false
        self.switchToggled(self.mySwitch)
    }
    
    @IBAction func switchOnButtonClicked(_ b: UIButton) {
        self.mySwitch.isOn = true
        self.switchToggled(self.mySwitch)
    }

}

