//
//  ViewController.swift
//  Cash Counter Swift
//
//  Created by Daniel Fairbanks on 6/4/14.
//  Copyright (c) 2014 Fairbanksdan. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    var str : Int?
    var pennyCount = 0.00
    var nickelCount = 0.00
    var dimeCount = 0.00
    var quarterCount = 0.00
    var fiftyCentCount = 0.00
    var singleDollarCount = 0.00
    var twoDollarCount = 0.00
    var fiveDollarCount = 0.00
    var tenDollarCount = 0.00
    var twentyDollarCount = 0.00
    var fiftyDollarCount = 0.00
    var hundredDollarCount = 0.00
    
    @IBOutlet var scrollView : UIScrollView
    
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
    
    @IBOutlet var screenTapped : UITapGestureRecognizer = nil
    
    @IBAction func tapToCloseKeyboard(sender : UITapGestureRecognizer) {
        
        pennyTextField.resignFirstResponder()
        nickelTextField.resignFirstResponder()
        dimeTextField.resignFirstResponder()
        quarterTextField.resignFirstResponder()
        fiftyCentTextField.resignFirstResponder()
        singleDollarTextField.resignFirstResponder()
        twoDollarTextField.resignFirstResponder()
        fiveDollarTextField.resignFirstResponder()
        tenDollarTextField.resignFirstResponder()
        twentyDollarTextField.resignFirstResponder()
        fiftyDollarTextField.resignFirstResponder()
        hundredDollarTextField.resignFirstResponder()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pennyTextField.layer.borderWidth = 0.5
        pennyTextField.layer.borderColor = CGColorCreateGenericRGB(255, 255, 255, 1)
        nickelTextField.layer.borderWidth = 0.5
        nickelTextField.layer.borderColor = CGColorCreateGenericRGB(255, 255, 255, 1)
        dimeTextField.layer.borderWidth = 0.5
        dimeTextField.layer.borderColor = CGColorCreateGenericRGB(255, 255, 255, 1)
        quarterTextField.layer.borderWidth = 0.5
        quarterTextField.layer.borderColor = CGColorCreateGenericRGB(255, 255, 255, 1)
        fiftyCentTextField.layer.borderWidth = 0.5
        fiftyCentTextField.layer.borderColor = CGColorCreateGenericRGB(255, 255, 255, 1)
        singleDollarTextField.layer.borderWidth = 0.5
        singleDollarTextField.layer.borderColor = CGColorCreateGenericRGB(255, 255, 255, 1)
        twoDollarTextField.layer.borderWidth = 0.5
        twoDollarTextField.layer.borderColor = CGColorCreateGenericRGB(255, 255, 255, 1)
        fiveDollarTextField.layer.borderWidth = 0.5
        fiveDollarTextField.layer.borderColor = CGColorCreateGenericRGB(255, 255, 255, 1)
        tenDollarTextField.layer.borderWidth = 0.5
        tenDollarTextField.layer.borderColor = CGColorCreateGenericRGB(255, 255, 255, 1)
        twentyDollarTextField.layer.borderWidth = 0.5
        twentyDollarTextField.layer.borderColor = CGColorCreateGenericRGB(255, 255, 255, 1)
        fiftyDollarTextField.layer.borderWidth = 0.5
        fiftyDollarTextField.layer.borderColor = CGColorCreateGenericRGB(255, 255, 255, 1)
        hundredDollarTextField.layer.borderWidth = 0.5
        hundredDollarTextField.layer.borderColor = CGColorCreateGenericRGB(255, 255, 255, 1)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pennyCounter(sender : UITextField) {
        if let str = pennyTextField.text?.toInt(){
            pennyCount = Double(str) * 0.01
        } else {
            pennyCount = 0.00
        }
        UpdateLabels()
    }

    @IBAction func nickelCounter(sender : UITextField) {
        if let str = nickelTextField.text?.toInt(){
            nickelCount = Double(str) * 0.05
        } else {
            nickelCount = 0.00
        }
        UpdateLabels()
    }
    
    @IBAction func dimeCounter(sender : UITextField) {
        if let str = dimeTextField.text?.toInt(){
            dimeCount = Double(str) * 0.10
        } else {
            dimeCount = 0.00
        }
        UpdateLabels()
    }
    
    @IBAction func quarterCount(sender : UITextField) {
        if let str = quarterTextField.text?.toInt(){
            quarterCount = Double(str) * 0.25
        } else {
            quarterCount = 0.00
        }
        UpdateLabels()
    }
    
    @IBAction func fiftyCentCounter(sender : UITextField) {
        if let str = fiftyCentTextField.text?.toInt(){
            fiftyCentCount = Double(str) * 0.50
        } else {
            fiftyCentCount = 0.00
        }
        UpdateLabels()
    }
    
    @IBAction func singledollarCounter(sender : UITextField) {
        if let str = singleDollarTextField.text?.toInt(){
            singleDollarCount = Double(str) * 1.00
        } else {
            singleDollarCount = 0.00
        }
        UpdateLabels()
    }
    
    func UpdateLabels() {
        grandTotalLabel.text = String(format:"%.2f", pennyCount + nickelCount + dimeCount + quarterCount + fiftyCentCount + singleDollarCount)
        
        pennyTotalLabel.text = String(format:"%.2f", pennyCount)
        nickelTotalLabel.text = String(format:"%.2f", nickelCount)
        dimeTotalLabel.text = String(format:"%.2f", dimeCount)
        quarterTotalLabel.text = String(format:"%.2f", quarterCount)
        fiftyCentTotalLabel.text = String(format:"%.2f", fiftyCentCount)
        singleDollarTotalLabel.text = String(format:"%.2f", singleDollarCount)
        
    }
    
    
    @IBAction func ResetButtonPressed(sender : UIButton) {
    }
    
    
}

