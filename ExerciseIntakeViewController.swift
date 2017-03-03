//
//  ExerciseIntakeViewController.swift
//  iOSFinalProject
//
//  Created by Gwizdalski, Eric on 2/28/17.
//  Copyright © 2017 Gwizdalski, Marcille, Wong. All rights reserved.
//

import UIKit


let exerciseType = [
    "Jogging",
    "Swimming",
    "Yoga"
]

let timeLength = [
    "15 min",
    "30 min",
    "60 min"
]


class ExerciseIntakeViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    var grabbedWeight: [Double] = [0.0]
    
    var exerciseCalorie = 0
    
    var exerciseArray: [String] = []
    var exerciseCount: [Int] = []
    
    @IBOutlet weak var weightHolder: UITextField!

    
    @IBOutlet weak var exerciseOutput: UITextView!
    
    
    @IBOutlet weak var picker: UIPickerView!
    
    
    @IBOutlet weak var finalExercise: UILabel!
    
    @IBAction func grabWeight(_ sender: UIButton) {
        grabbedWeight = [Double(weightHolder.text!)!]
        
        //Put fetch function here fropm the actual Persona Info for weight
        
        
    }
    
    @IBAction func Add(_ sender: UIButton) {
        
        
    }
    
    
    @IBAction func Clear(_ sender: UIButton) {
        
        
        
        
        
    }
    
    
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return exerciseType.count
        } else {
            return timeLength.count
        }
    }
    
    // MARK: UIPickerViewDelegate
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return exerciseType[row]
        } else {
            return timeLength[row]
        }
    }
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
