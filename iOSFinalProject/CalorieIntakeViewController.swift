//
//  CalorieIntakeViewController.swift
//  iOSFinalProject
//
//  Created by Gwizdalski, Eric on 2/28/17.
//  Copyright © 2017 Gwizdalski, Marcille, Wong. All rights reserved.
//

import UIKit

class CalorieIntakeViewController: UIViewController {

    var foodArray: [String] = []
    var calorieArray: [Int] = []
    
    var finalCalories: Int = 0
    
    @IBOutlet weak var foodText: UITextField!
    @IBOutlet weak var calorieText: UITextField!
    
    @IBOutlet weak var finalOutput: UITextView!
    
    @IBOutlet weak var finalCalorie: UILabel!
    
    
    @IBAction func Add(_ sender: UIButton) {
        var textHolder = finalOutput.text
        
        //place holder arrays
        foodArray.append(foodText.text!)
        calorieArray.append(Int(calorieText.text!)!)
        
        finalCalories += Int(calorieText.text!)!
        finalCalorie.text = String(finalCalories)
        
        finalOutput.text = textHolder! + "\n" + foodText.text! + "    " + calorieText.text! + "\n"
        
        
        foodText.text = ""
        calorieText.text = ""
        
        
        
    }
    
    
    @IBAction func Clear(_ sender: UIButton) {
        
        
        foodText.text = ""
        calorieText.text = ""
        finalOutput.text = ""
        
        finalCalories = 0
        finalCalorie.text = String(finalCalories)
        finalOutput.text = ""
        
        foodArray = []
        calorieArray = []
        
    }
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "Save"{
            
            if let destination = segue.destination as? FirstViewController {
                destination.gotPersonal = finalCalories
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        // Do any additional setup after loading the view.
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
