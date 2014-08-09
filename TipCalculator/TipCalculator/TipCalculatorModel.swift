//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by Shane Doyle on 09/08/2014.
//  Copyright (c) 2014 Shane Doyle. All rights reserved.
//

import Foundation

class TipCalculatorModel {
    
    var beforeTax: Double
    var taxPct: Double
    var afterTax: Double {
        get {
            return beforeTax / (taxPct + 1)
        }
    }
    
    init (beforeTax:Double, taxPct:Double) {
        self.beforeTax = beforeTax
        self.taxPct = taxPct
    }
    
    func calculateTipWithPct(tipPct:Double) -> Double {
        return afterTax * tipPct
    }
    
    func returnPossibleTips() -> [Int: Double] {
        let possibleTips = [0.15, 0.18, 0.20]
        
        var returnValue = [Int: Double]()
        for possibleTip in possibleTips {
            let intPct = Int(possibleTip*100)
            
            returnValue[intPct] = calculateTipWithPct(possibleTip)
        }
        
        return returnValue
    }
    
}