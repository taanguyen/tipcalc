//
//  SettingsViewController.swift
//  tipcalc
//
//  Created by TA on 8/2/20.
//  Copyright © 2020 TA. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultControlUI: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // display default tip
        let defaults = UserDefaults.standard
        let index = defaults.integer(forKey: "tipIndex")
        defaultControlUI.selectedSegmentIndex = index 
    }
    
    @IBAction func defaultControl(_ sender: Any) {
        let defaults = UserDefaults.standard
        let index = defaultControlUI.selectedSegmentIndex
        // set tipPercentage default to selected percentage
        defaults.set(index, forKey: "tipIndex")
        defaults.synchronize()
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
