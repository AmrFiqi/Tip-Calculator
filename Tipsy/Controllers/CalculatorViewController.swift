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
    
    @IBOutlet var totalBillEntered: UITextField!
    @IBOutlet var zeroPercentButton: UIButton!
    @IBOutlet var tenPercentButton: UIButton!
    @IBOutlet var twentyPercentButton: UIButton!
    @IBOutlet var splitLabel: UILabel!
    
    // MARK: - Struct Object
    
    var calculateBrain = CalculateBrain()
    
    // MARK: - IBAction Methods
    
    @IBAction func tipChanged(_ sender: UIButton) {
        calculateBrain.selectedPercentage(currentButton: sender, zeroPercentButton, tenPercentButton, twentyPercentButton)
        totalBillEntered.endEditing(true)
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitLabel.text = Int(sender.value).description
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    // MARK: - Class Methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sentBill = Double(totalBillEntered.text!) else { return }
        guard let numberOfSplits = Double(splitLabel.text ?? "2") else { return }
        calculateBrain.calculteBill(sentBill, numberOfSplits)
        
        let destinationVC = segue.destination as! ResultViewController
        destinationVC.total = calculateBrain.getTotalPerPerson()
        destinationVC.numOfPeople = calculateBrain.getSplitMessage(splitLabel.text! )
    }
}

