//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet var zeroPercentButton: UIButton!
    @IBOutlet var tenPercentButton: UIButton!
    @IBOutlet var twentyPercentButton: UIButton!
    @IBOutlet var numberOfPeople: UILabel!
    
    // MARK: - Variable
    
    var tip: Float = 0.0
    
    // MARK: - IBAction Methods
    
    @IBAction func tipChanged(_ sender: UIButton) {
        if (sender.currentTitle == zeroPercentButton.currentTitle){
            zeroPercentButton.isSelected = true
            tenPercentButton.isSelected = false
            twentyPercentButton.isSelected = false
        }
        else if (sender.currentTitle == tenPercentButton.currentTitle){
            zeroPercentButton.isSelected = false
            tenPercentButton.isSelected = true
            twentyPercentButton.isSelected = false
        }
        else {
            zeroPercentButton.isSelected = false
            tenPercentButton.isSelected = false
            twentyPercentButton.isSelected = true
        }
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(checkPressedButton())
    }
    
    // MARK: - Class Methods
    
    func checkPressedButton() -> Float {
        if zeroPercentButton.isSelected == true {
            tip = 0.0
            return tip
        }
        else if tenPercentButton.isSelected == true {
            tip = 0.1
            return tip
        }
        else {
            tip = 0.2
            return tip
        }
    }
}

