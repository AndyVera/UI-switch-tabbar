//
//  ViewController.swift
//  Live Demo - UI Bar, TabBar
//
//  Created by Andy Vera on 9/20/22.
//

import UIKit

class MySwitchDemoController: UIViewController {

    @IBOutlet var theSwitch: UISwitch!
    @IBOutlet var switchoffButton: UIButton!
    @IBOutlet var switchOnButton: UIButton!
    @IBOutlet var switchStatusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchOffButtonClicked(_ b: UIButton){
        self.theSwitch.isOn = false
        self.switchToggled(self.theSwitch)
    }
    @IBAction func switchOnButtonClicked(_ b: UIButton){
        self.theSwitch.isOn = true
        self.switchToggled(self.theSwitch)
    }
    
    @IBAction func switchToggled(_ sw: UISwitch){
        if (sw.isOn){
            self.switchStatusLabel.text = "Switch is On"
        }
        else{
            self.switchStatusLabel.text = "Switch is OF"
        }
    }


}

