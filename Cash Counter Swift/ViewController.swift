//
//  ViewController.swift
//  Cash Counter Swift
//
//  Created by Daniel Fairbanks on 6/4/14.
//  Copyright (c) 2014 Fairbanksdan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var str: Int = 0
    var pennyCount = 0.00
    let pennymultiplier = 0.01
    
    @IBOutlet var resetButton : UIButton
    @IBOutlet var grandTotalLabel : UILabel
    @IBOutlet var pennyTotalLabel : UILabel
    
    
    @IBOutlet var pennyTextField : UITextField
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pennyCounter(sender : UITextField) {
        str = pennyTextField.text.toInt()!
        
        pennyCount = Float(str) * 0.01
        
        self.UpdateLabels()
    }
    
    func UpdateLabels() {
        pennyTotalLabel.text = String(str)
        
    }

    @IBAction func ResetButtonPressed(sender : UIButton) {
    }
    
    
}

