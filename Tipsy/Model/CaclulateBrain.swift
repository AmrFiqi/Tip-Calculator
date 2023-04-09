//
//  CaclulateBrain.swift
//  Tipsy
//
//  Created by Amr El-Fiqi on 09/04/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

struct CalculateBrain {
    
    var bill: Bill?
    var stupid = 10.0
    mutating func calculteBill(_ sentBill: Double,_ split: Double) {
        let tip = (sentBill * (bill?.percentage ?? 0.0))
        bill?.totalBill = (tip + sentBill) / split
       
    }
    
    mutating func selectedPercentage(currentButton sender: UIButton, _ zeroButton: UIButton, _ tenButton: UIButton, _ twentyButton: UIButton){
        if (sender.currentTitle == zeroButton.currentTitle){
            zeroButton.isSelected = true
            tenButton.isSelected = false
            twentyButton.isSelected = false
            bill = Bill(totalBill: 0, percentage: 0.0)
        }
        else if (sender.currentTitle == tenButton.currentTitle){
            zeroButton.isSelected = false
            tenButton.isSelected = true
            twentyButton.isSelected = false
            bill = Bill(totalBill: 0, percentage: 0.1)
        }
        else {
            zeroButton.isSelected = false
            tenButton.isSelected = false
            twentyButton.isSelected = true
            bill = Bill(totalBill: 0, percentage: 0.2)
        }
    }
    func getTotalPerPerson() -> String{
        return String(format: "%.2f", bill?.totalBill ?? 0)
        
    }
    
    func getSplitMessage(_ numberOfPeople: String) -> String {
        return "Split between \(numberOfPeople) people, with \(bill!.percentage * 100)% tip."
    }
}
