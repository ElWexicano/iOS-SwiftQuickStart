//
//  ViewController.swift
//  TipCalculator
//
//  Created by Shane Doyle on 09/08/2014.
//  Copyright (c) 2014 Shane Doyle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var totalTextField: UITextField!
    @IBOutlet var taxPercentageLabel: UILabel!
    @IBOutlet var taxPercentageSlider: UISlider!
    @IBOutlet var resultsTextView: UITextView!
    
    @IBAction func calculateTapped(sender : AnyObject) {
        tipCalculated.beforeTax = Double((totalTextField.text as NSString).doubleValue)
        
        let possibleTips = tipCalculated.returnPossibleTips()
        var results = ""
        
        for (tipPct, tipValue) in possibleTips {
            results += "\(tipPct)%: \(tipValue)\n"
        }
        
        resultsTextView.text = results
    }
    
    @IBAction func taxPercentageChanged(sender : AnyObject) {
        tipCalculated.taxPct = Double(taxPercentageSlider.value) / 100.0
        refreshUI()
    }
    
    @IBAction func viewTapped(sender : AnyObject) {
        totalTextField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let tipCalculated = TipCalculatorModel(beforeTax: 33.25, taxPct: 0.06)
    
    func refreshUI() {
        totalTextField.text = String(format: "%0.2f", tipCalculated.beforeTax)
        taxPercentageSlider.value = Float(tipCalculated.taxPct) * 100.0
        taxPercentageLabel.text = "Tax Percentage (\(Int(taxPercentageSlider.value))%"
        resultsTextView.text = ""
    }
    

    

}

