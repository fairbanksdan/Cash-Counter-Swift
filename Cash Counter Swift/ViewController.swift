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
    var pennyCount: Double = 0.00
    let pennymultiplier = 0.01
    
    @IBOutlet var resetButton : UIButton
    @IBOutlet var grandTotalLabel : UILabel
    @IBOutlet var pennyTotalLabel : UILabel
    @IBOutlet var nickelTotalLabel : UILabel
    @IBOutlet var dimeTotalLabel : UILabel
    @IBOutlet var quarterTotalLabel : UILabel
    @IBOutlet var fiftyCentTotalLabel : UILabel
    @IBOutlet var singleDollarTotalLabel : UILabel
    @IBOutlet var twoDollarTotalLabel : UILabel
    @IBOutlet var fiveDollarTotalLabel : UILabel
    @IBOutlet var tenDollarTotalLabel : UILabel
    @IBOutlet var twentyDollarTotalLabel : UILabel
    @IBOutlet var fiftyDollarTotalLabel : UILabel
    @IBOutlet var hundredDollarTotalLabel : UILabel
    
    @IBOutlet var pennyTextField : UITextField
    @IBOutlet var nickelTextField : UITextField
    @IBOutlet var dimeTextField : UITextField
    @IBOutlet var quarterTextField : UITextField
    @IBOutlet var fiftyCentTextField : UITextField
    @IBOutlet var singleDollarTextField : UITextField
    @IBOutlet var twoDollarTextField : UITextField
    @IBOutlet var fiveDollarTextField : UITextField
    @IBOutlet var tenDollarTextField : UITextField
    @IBOutlet var twentyDollarTextField : UITextField
    @IBOutlet var fiftyDollarTextField : UITextField
    @IBOutlet var hundredDollarTextField : UITextField
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pennyTextField.layer.borderColor = CGColorCreateGenericRGB(100, 50, 200, 1)
        pennyTextField.layer.borderWidth = 0.5
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pennyCounter(sender : UITextField) {
        str = pennyTextField.text.toInt()!
        
        pennyCount = Double(str) * 0.01
        
        UpdateLabels()
    }
    
    func UpdateLabels() {
        pennyTotalLabel.text = String(pennyCount)
        
    }

    @IBAction func ResetButtonPressed(sender : UIButton) {
    }
    
    
}

