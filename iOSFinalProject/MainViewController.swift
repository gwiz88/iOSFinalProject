//
//  FirstViewController.swift
//  iOSFinalProject
//
//  Created by Gwizdalski, Eric on 2/28/17.
//  Copyright © 2017 Gwizdalski, Marcille, Wong. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var gotPersonal: Int = 0
    
    var gotFood: Int = 0
    
    var gotExercise: Int = 0
    
    var finalCalorie: Int = 0
    
    @IBOutlet weak var perCal: UILabel!
    
    @IBOutlet weak var foodCal: UILabel!
    
    @IBOutlet weak var finalCal: UILabel!
    
    @IBOutlet weak var exerciseCal: UILabel!
    
    @IBOutlet weak var fetchButton: UIButton!
    
    @IBOutlet weak var computeButton: UIButton!
    
    @IBOutlet weak var clearButton: UIButton!
    
    
    @IBAction func fetch(_ sender: UIButton) {
        let personal_vc:PerosnalInfoViewController = self.tabBarController?.viewControllers![2] as! PerosnalInfoViewController
        let exercise_vc:ExerciseIntakeViewController = self.tabBarController?.viewControllers![4] as! ExerciseIntakeViewController
        let food_vc:CalorieIntakeViewController = self.tabBarController?.viewControllers![1] as! CalorieIntakeViewController
        
        gotPersonal = Int(personal_vc.BMRFinal)
        gotExercise = exercise_vc.exerciseCalorie
        gotFood = food_vc.finalCalories
        
    
        
        foodCal.text = String(gotFood)
        exerciseCal.text = String(gotExercise)
        perCal.text = String(gotPersonal)
    }
    
    @IBAction func compute(_ sender: UIButton) {
        
        if foodCal.text == "0" || perCal.text == "0" {
        let title = "Warning"
        let message = "You need to enter the necessary information, please enter your personal info and calorie intake"
        
        let alertController = UIAlertController( title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
        
        } else {
        
        
        finalCalorie = gotPersonal - gotFood + gotExercise
        finalCal.text = String(finalCalorie)
        
        
        }
        
    }
    
    
    
    @IBAction func clear(_ sender: UIButton) {
        
        gotPersonal = 0
        perCal.text = "0"
        gotFood = 0
        foodCal.text = "0"
        gotExercise = 0
        exerciseCal.text = "0"
        finalCalorie = 0
        finalCal.text = "0"
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchButton.layer.cornerRadius = 4
        computeButton.layer.cornerRadius = 4
        clearButton.layer.cornerRadius = 4
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

