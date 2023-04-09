//
//  CaclulateBrain.swift
//  Tipsy
//
//  Created by Amr El-Fiqi on 09/04/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

struct CalculateBrain {
    
    var totalBill = 0.0
    var percentage = 0.0
    
    mutating func calculteBill(_ bill: Double,_ split: Double) -> Double {
        let tip = (bill * percentage)
        totalBill = (tip + bill) / split
        return totalBill
    }
    
    mutating func selectedPercentage(currentButton sender: UIButton, _ zeroButton: UIButton, _ tenButton: UIButton, _ twentyButton: UIButton){
        if (sender.currentTitle == zeroButton.currentTitle){
            zeroButton.isSelected = true
            tenButton.isSelected = false
            twentyButton.isSelected = false
            percentage = 0.0
        }
        else if (sender.currentTitle == tenButton.currentTitle){
            zeroButton.isSelected = false
            tenButton.isSelected = true
            twentyButton.isSelected = false
            percentage = 0.1
        }
        else {
            zeroButton.isSelected = false
            tenButton.isSelected = false
            twentyButton.isSelected = true
            percentage = 0.2
        }
    }
    func getTotalPerPerson() -> String{
        String(round(totalBill))
        
    }
    func getSplitMessage() {
        
    }
}
