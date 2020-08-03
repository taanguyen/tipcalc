//
//  ViewController.swift
//  tipcalc
//
//  Created by TA on 8/2/20.
//  Copyright © 2020 TA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set title in nav bar
        self.title = "Tip Calculator"
        // set default tip
        let defaults = UserDefaults.standard
        let index = defaults.integer(forKey:"tipIndex")
        tipControl.selectedSegmentIndex = index
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        // set default tip
        let defaults = UserDefaults.standard
        let index = defaults.integer(forKey:"tipIndex")
        tipControl.selectedSegmentIndex = index
        
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        // calculate tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //update tip and total labels
        tipPercentageLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
        
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get initial bill amount and calculate tips
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        // calculate tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //update tip and total labels
        tipPercentageLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
    }
    
    
    
}

