//
//  ViewController.swift
//  tip
//
//  Created by Grace Lee on 7/31/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalForTwo: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalForThree: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billField.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }
    
    
  
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get the bill amt
        let bill = Double(billField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        
        //calc tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let totalTwo = (bill + tip)/2
        let totalThree = (bill + tip)/3
        
        
        //update tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        totalForTwo.text = String(format: "$%.2f", roundUp(totalTwo, toNearest: 0.01))
        totalForThree.text = String(format: "$%.2f", roundUp(totalThree, toNearest: 0.01))
        
    }
    
    func roundUp(_ value: Double, toNearest: Double) -> Double {
      return ceil(value / toNearest) * toNearest
    }
}

