//
//  SettingsViewController.swift
//  tip
//
//  Created by Grace Lee on 8/1/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var mode: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        
        

        // Do any additional setup after loading the view.
    }
  
    @IBAction func changeMode(_ sender: Any) {
        let modeArray = ["Light", "Dark"]
      
        let chosenMode = modeArray[mode.selectedSegmentIndex]
        print(chosenMode)
        if String(chosenMode) == "Dark" {
            overrideUserInterfaceStyle = .dark
            
        }
        else if String(chosenMode) == "Light" {
            overrideUserInterfaceStyle = .light
            
        }
        
        
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
