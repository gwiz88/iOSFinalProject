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
    
    @IBOutlet weak var scanButton: UIButton!
    
    @IBOutlet weak var addButton: UIButton!
    

    @IBOutlet weak var clearButton: UIButton!
    
    @IBAction func Add(_ sender: UIButton) {
        let textHolder = finalOutput.text
        
        
        if foodText.text == "" || calorieText.text == "" {
            let title = "Warning"
            let message = "You need to enter a food and calorie count to add it to the list"
            
            let alertController = UIAlertController( title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
            
        } else {
        
        
        //place holder arrays
        foodArray.append(foodText.text!)
        calorieArray.append(Int(calorieText.text!)!)
        
        finalCalories += Int(calorieText.text!)!
        finalCalorie.text = String(finalCalories)
        
        finalOutput.text = textHolder! + "\n" + foodText.text! + "    " + calorieText.text! + "\n"
        
        
        foodText.text = ""
        calorieText.text = ""
        
        }
        
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
            
            if let destination = segue.destination as? TrackingViewController {

                destination.gotFoodArray = foodArray
                destination.gotCalorieArray = calorieArray
                
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scanButton.layer.cornerRadius = 4
        addButton.layer.cornerRadius = 4
        clearButton.layer.cornerRadius = 4
        
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
