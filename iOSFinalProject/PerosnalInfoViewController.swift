//
//  PerosnalInfoViewController.swift
//  iOSFinalProject
//
//  Created by Gwizdalski, Eric on 2/28/17.
//  Copyright © 2017 Gwizdalski, Marcille, Wong. All rights reserved.
//

import UIKit

class PerosnalInfoViewController: UIViewController {

var BMRFinal = 0.0
    
var passWeight = 0
    
@IBOutlet weak var genderSelect: UISegmentedControl!
    
@IBOutlet weak var years: UITextField!
    
@IBOutlet weak var inches: UITextField!
    
@IBOutlet weak var pounds: UITextField!
    
@IBOutlet weak var outputText: UITextView!
    
    
    
    
@IBAction func Calculate(_ sender: UIButton) {
        let ageDouble: Double? = Double(years.text!)
        let heightDouble: Double? = Double(inches.text!)
        let weightDouble: Double? = Double(pounds.text!)
        
        passWeight = Int(weightDouble!)
    
        if genderSelect.selectedSegmentIndex == 0 {
            let BMR1 = 66.5 + (6.2 * weightDouble!)
            let BMR2 = (12.7 * heightDouble!)
            let BMR3 = (6.76 * ageDouble!)
            let BMRMale = BMR1 + BMR2 - BMR3
            
            outputText.text = "No Activity "+String(BMRMale * 1.2) + "\n" + "Light Exercise " + String(BMRMale*1.375) + "\n"
            BMRFinal = (BMRMale * 1.2)
        }
        else{
            let BMR4 = 655.1 + (4.35 * weightDouble!)
            let BMR5 = (4.7 * heightDouble!)
            let BMR6 = (4.7 * ageDouble!)
            let BMRFemale = BMR4 + BMR5 - BMR6
            
            outputText.text = "No Activity "+String(BMRFemale * 1.2) + "\n" + "Light Exercise " + String(BMRFemale*1.375) + "\n"
            BMRFinal = (BMRFemale * 1.2)
        }
        
        
        
    }
    
    
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "Save"{
            
            if let destination = segue.destination as? FirstViewController {
                destination.gotPersonal = Int(BMRFinal)
            }
            
            if let destination = segue.destination as? ExerciseIntakeViewController {
                destination.grabbedWeight = Double(passWeight)
            }
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      

        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
