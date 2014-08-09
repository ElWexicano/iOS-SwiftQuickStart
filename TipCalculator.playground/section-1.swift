// Playground - noun: a place where people can play

import UIKit

class TipCalculator {
    
    let beforeTax: Double
    let afterTax: Double
    let taxPct: Double
    
    init (beforeTax:Double, taxPct:Double) {
        self.beforeTax = beforeTax
        self.taxPct = taxPct
        afterTax = beforeTax / (taxPct + 1)
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

let tipCalculator = TipCalculator(beforeTax: 39.99, taxPct: 0.21)
tipCalculator.returnPossibleTips()


