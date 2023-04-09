//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Amr El-Fiqi on 09/04/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var settingLabel: UILabel!
    
    
    var total: String?
    // MARK: - IBActions
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    // MARK: - Class Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        totalLabel.text = total
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
