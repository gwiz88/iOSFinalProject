//
//  ExerciseIntakeViewController.swift
//  iOSFinalProject
//
//  Created by Gwizdalski, Eric on 2/28/17.
//  Copyright © 2017 Gwizdalski, Marcille, Wong. All rights reserved.
//

import UIKit


let exerciseType = [
    "Running",
    "Swimming",
    "Yoga",
    "Weight Training",
    "Bicycling",
    "Martial Arts",
    "Walking",
    "Hiking"
]

let timeLength = [
    "15 min",
    "30 min",
    "60 min"
]


class ExerciseIntakeViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    var grabbedWeight = 0.0

    var exerciseCalorie = 0
    
    var exerciseArray: [String] = []
    var exerciseCount: [Int] = []
    
    @IBOutlet weak var weightHolder: UITextField!

    @IBOutlet weak var pickerLabel: UIPickerView!
    
    @IBOutlet weak var exerciseOutput: UITextView!
    
    
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var finalExercise: UILabel!
    
    @IBOutlet weak var grabButton: UIButton!
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var updateButton: UIButton!
    
    @IBOutlet weak var clearButton: UIButton!
    
    
    @IBAction func grabWeight(_ sender: UIButton) {
       
    //self.pickerLabel.setValue(UIColor.white, forKey: "textColor")
        
        //grabbedWeight = Double(weightHolder.text!)!
        
        let weight_vc:PerosnalInfoViewController = self.tabBarController?.viewControllers![2] as! PerosnalInfoViewController
        
        grabbedWeight = Double(Int(weight_vc.passWeight))
        
        
        if grabbedWeight == 0.0 {
            let title = "Warning"
            let message = "You need to enter your information, please enter your personal info"
            
            let alertController = UIAlertController( title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
            
        } else {
        
        weightHolder.text = String(grabbedWeight)
        //Put fetch function here fropm the actual Persona Info for weight
        
        }
    }
    
    @IBAction func Add(_ sender: UIButton) {
        let exerciseHolder = exerciseOutput.text
        var base240 = 0
        var base200 = 0
        var base160 = 0
        
        
        //from here
        
        if exerciseType[picker.selectedRow(inComponent: 0)] == "Running"{
             base240 = 905
             base200 = 755
             base160 = 606
   
            exerciseArray.append(exerciseType[picker.selectedRow(inComponent: 0)])
            
            
            if timeLength[picker.selectedRow(inComponent: 1)] == "15 min" {
                
                if grabbedWeight >= 240.0{
                    exerciseCount.append(base240/4)
                    exerciseCalorie += base240/4
                    
                    finalExercise.text = String(exerciseCalorie)
                    
                }
                    
                else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                    exerciseCount.append(base200/4)
                    exerciseCalorie += (base200/4)
                    finalExercise.text = String(exerciseCalorie)

                }
                else if grabbedWeight < 200.0 {
                    exerciseCount.append(base160/4)
                    exerciseCalorie += (base160/4)
                    finalExercise.text = String(exerciseCalorie)

                }
                
                
             
            }
            else if timeLength[picker.selectedRow(inComponent: 1)] == "30 min" {
                
                if grabbedWeight >= 240.0{
                    exerciseCount.append(base240/2)
                    exerciseCalorie += (base240/2)
                    finalExercise.text = String(exerciseCalorie)

                }
                    
                else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                    exerciseCount.append(base200/2)
                    exerciseCalorie += (base200/2)
                    finalExercise.text = String(exerciseCalorie)

                }
                else if grabbedWeight < 200.0 {
                    exerciseCount.append(base160/2)
                    exerciseCalorie += (base160/2)
                    finalExercise.text = String(exerciseCalorie)
                    
                }
                
                
                
            }
            else if timeLength[picker.selectedRow(inComponent: 1)] == "60 min" {
                
                if grabbedWeight >= 240.0{
                    exerciseCount.append(base240)
                    exerciseCalorie += base240
            
                }
                
                else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                    exerciseCount.append(base200)
                    exerciseCalorie += base200
                    
                    
                }
                else if grabbedWeight < 200.0 {
                    exerciseCount.append(base160)
                    exerciseCalorie += base160
                    
                    
                    
                }
                
                
            }
            
            
        }//end of jogging statement
        
       else if exerciseType[picker.selectedRow(inComponent: 0)] == "Swimming" {
            base240 = 632
            base200 = 528
            base160 = 423
            
            exerciseArray.append(exerciseType[picker.selectedRow(inComponent: 0)])
            
            
            if timeLength[picker.selectedRow(inComponent: 1)] == "15 min" {
                
                if grabbedWeight >= 240.0{
                    exerciseCount.append(base240/4)
                    exerciseCalorie += base240/4
                    
                    finalExercise.text = String(exerciseCalorie)
                    
                }
                    
                else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                    exerciseCount.append(base200/4)
                    exerciseCalorie += (base200/4)
                    finalExercise.text = String(exerciseCalorie)
                    
                }
                else if grabbedWeight < 200.0 {
                    exerciseCount.append(base160/4)
                    exerciseCalorie += (base160/4)
                    finalExercise.text = String(exerciseCalorie)
                    
                }
                
                
                
            }
            else if timeLength[picker.selectedRow(inComponent: 1)] == "30 min" {
                
                if grabbedWeight >= 240.0{
                    exerciseCount.append(base240/2)
                    exerciseCalorie += (base240/2)
                    finalExercise.text = String(exerciseCalorie)
                    
                }
                    
                else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                    exerciseCount.append(base200/2)
                    exerciseCalorie += (base200/2)
                    finalExercise.text = String(exerciseCalorie)
                    
                }
                else if grabbedWeight < 200.0 {
                    exerciseCount.append(base160/2)
                    exerciseCalorie += (base160/2)
                    finalExercise.text = String(exerciseCalorie)
                    
                }
                
                
                
            }
            else if timeLength[picker.selectedRow(inComponent: 1)] == "60 min" {
                
                if grabbedWeight >= 240.0{
                    exerciseCount.append(base240)
                    exerciseCalorie += base240
                    
                }
                    
                else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                    exerciseCount.append(base200)
                    exerciseCalorie += base200
                    
                    
                }
                else if grabbedWeight < 200.0 {
                    exerciseCount.append(base160)
                    exerciseCalorie += base160
                    
                    
                    
                }
                
                
            }
            
        }
        
        
        else  if exerciseType[picker.selectedRow(inComponent: 0)] == "Yoga" {
            base240 = 273
            base200 = 228
            base160 = 183
            
            exerciseArray.append(exerciseType[picker.selectedRow(inComponent: 0)])
            
            
            if timeLength[picker.selectedRow(inComponent: 1)] == "15 min" {
                
                if grabbedWeight >= 240.0{
                    exerciseCount.append(base240/4)
                    exerciseCalorie += base240/4
                    
                    finalExercise.text = String(exerciseCalorie)
                    
                }
                    
                else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                    exerciseCount.append(base200/4)
                    exerciseCalorie += (base200/4)
                    finalExercise.text = String(exerciseCalorie)
                    
                }
                else if grabbedWeight < 200.0 {
                    exerciseCount.append(base160/4)
                    exerciseCalorie += (base160/4)
                    finalExercise.text = String(exerciseCalorie)
                    
                }
                
                
                
            }
            else if timeLength[picker.selectedRow(inComponent: 1)] == "30 min" {
                
                if grabbedWeight >= 240.0{
                    exerciseCount.append(base240/2)
                    exerciseCalorie += (base240/2)
                    finalExercise.text = String(exerciseCalorie)
                    
                }
                    
                else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                    exerciseCount.append(base200/2)
                    exerciseCalorie += (base200/2)
                    finalExercise.text = String(exerciseCalorie)
                    
                }
                else if grabbedWeight < 200.0 {
                    exerciseCount.append(base160/2)
                    exerciseCalorie += (base160/2)
                    finalExercise.text = String(exerciseCalorie)
                    
                }
                
                
                
            }
            else if timeLength[picker.selectedRow(inComponent: 1)] == "60 min" {
                
                if grabbedWeight >= 240.0{
                    exerciseCount.append(base240)
                    exerciseCalorie += base240
                    
                }
                    
                else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                    exerciseCount.append(base200)
                    exerciseCalorie += base200
                    
                    
                }
                else if grabbedWeight < 200.0 {
                    exerciseCount.append(base160)
                    exerciseCalorie += base160
                    
                    
                    
                }
                
                
            }
        }
            
             else if exerciseType[picker.selectedRow(inComponent: 0)] == "Weight Training"{
                base240 = 545
                base200 = 455
                base160 = 365
                
                exerciseArray.append(exerciseType[picker.selectedRow(inComponent: 0)])
                
                
                if timeLength[picker.selectedRow(inComponent: 1)] == "15 min" {
                    
                    if grabbedWeight >= 240.0{
                        exerciseCount.append(base240/4)
                        exerciseCalorie += base240/4
                        
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                        
                    else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                        exerciseCount.append(base200/4)
                        exerciseCalorie += (base200/4)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    else if grabbedWeight < 200.0 {
                        exerciseCount.append(base160/4)
                        exerciseCalorie += (base160/4)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    
                    
                    
                }
                else if timeLength[picker.selectedRow(inComponent: 1)] == "30 min" {
                    
                    if grabbedWeight >= 240.0{
                        exerciseCount.append(base240/2)
                        exerciseCalorie += (base240/2)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                        
                    else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                        exerciseCount.append(base200/2)
                        exerciseCalorie += (base200/2)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    else if grabbedWeight < 200.0 {
                        exerciseCount.append(base160/2)
                        exerciseCalorie += (base160/2)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    
                    
                    
                }
                else if timeLength[picker.selectedRow(inComponent: 1)] == "60 min" {
                    
                    if grabbedWeight >= 240.0{
                        exerciseCount.append(base240)
                        exerciseCalorie += base240
                        
                    }
                        
                    else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                        exerciseCount.append(base200)
                        exerciseCalorie += base200
                        
                        
                    }
                    else if grabbedWeight < 200.0 {
                        exerciseCount.append(base160)
                        exerciseCalorie += base160
                        
                        
                        
                    }
                    
                    
                }
                
                
            }//end of weight Training statement
            
             else if exerciseType[picker.selectedRow(inComponent: 0)] == "Bicycling"{
                base240 = 436
                base200 = 364
                base160 = 292
                
                exerciseArray.append(exerciseType[picker.selectedRow(inComponent: 0)])
                
                
                if timeLength[picker.selectedRow(inComponent: 1)] == "15 min" {
                    
                    if grabbedWeight >= 240.0{
                        exerciseCount.append(base240/4)
                        exerciseCalorie += base240/4
                        
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                        
                    else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                        exerciseCount.append(base200/4)
                        exerciseCalorie += (base200/4)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    else if grabbedWeight < 200.0 {
                        exerciseCount.append(base160/4)
                        exerciseCalorie += (base160/4)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    
                    
                    
                }
                else if timeLength[picker.selectedRow(inComponent: 1)] == "30 min" {
                    
                    if grabbedWeight >= 240.0{
                        exerciseCount.append(base240/2)
                        exerciseCalorie += (base240/2)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                        
                    else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                        exerciseCount.append(base200/2)
                        exerciseCalorie += (base200/2)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    else if grabbedWeight < 200.0 {
                        exerciseCount.append(base160/2)
                        exerciseCalorie += (base160/2)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    
                    
                    
                }
                else if timeLength[picker.selectedRow(inComponent: 1)] == "60 min" {
                    
                    if grabbedWeight >= 240.0{
                        exerciseCount.append(base240)
                        exerciseCalorie += base240
                        
                    }
                        
                    else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                        exerciseCount.append(base200)
                        exerciseCalorie += base200
                        
                        
                    }
                    else if grabbedWeight < 200.0 {
                        exerciseCount.append(base160)
                        exerciseCalorie += base160
                        
                        
                        
                    }
                    
                    
                }
                
                
            }//end of Bicycling statement
            
            else if exerciseType[picker.selectedRow(inComponent: 0)] == "Martial Arts"{
                base240 = 1068
                base200 = 892
                base160 = 752
                
                exerciseArray.append(exerciseType[picker.selectedRow(inComponent: 0)])
                
                
                if timeLength[picker.selectedRow(inComponent: 1)] == "15 min" {
                    
                    if grabbedWeight >= 240.0{
                        exerciseCount.append(base240/4)
                        exerciseCalorie += base240/4
                        
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                        
                    else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                        exerciseCount.append(base200/4)
                        exerciseCalorie += (base200/4)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    else if grabbedWeight < 200.0 {
                        exerciseCount.append(base160/4)
                        exerciseCalorie += (base160/4)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    
                    
                    
                }
                else if timeLength[picker.selectedRow(inComponent: 1)] == "30 min" {
                    
                    if grabbedWeight >= 240.0{
                        exerciseCount.append(base240/2)
                        exerciseCalorie += (base240/2)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                        
                    else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                        exerciseCount.append(base200/2)
                        exerciseCalorie += (base200/2)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    else if grabbedWeight < 200.0 {
                        exerciseCount.append(base160/2)
                        exerciseCalorie += (base160/2)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    
                    
                    
                }
                else if timeLength[picker.selectedRow(inComponent: 1)] == "60 min" {
                    
                    if grabbedWeight >= 240.0{
                        exerciseCount.append(base240)
                        exerciseCalorie += base240
                        
                    }
                        
                    else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                        exerciseCount.append(base200)
                        exerciseCalorie += base200
                        
                        
                    }
                    else if grabbedWeight < 200.0 {
                        exerciseCount.append(base160)
                        exerciseCalorie += base160
                        
                        
                        
                    }
                    
                    
                }
                
                
            }//end of martial Arts statement
            else if exerciseType[picker.selectedRow(inComponent: 0)] == "Walking"{
                base240 = 305
                base200 = 255
                base160 = 204
                
                exerciseArray.append(exerciseType[picker.selectedRow(inComponent: 0)])
                
                
                if timeLength[picker.selectedRow(inComponent: 1)] == "15 min" {
                    
                    if grabbedWeight >= 240.0{
                        exerciseCount.append(base240/4)
                        exerciseCalorie += base240/4
                        
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                        
                    else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                        exerciseCount.append(base200/4)
                        exerciseCalorie += (base200/4)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    else if grabbedWeight < 200.0 {
                        exerciseCount.append(base160/4)
                        exerciseCalorie += (base160/4)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    
                    
                    
                }
                else if timeLength[picker.selectedRow(inComponent: 1)] == "30 min" {
                    
                    if grabbedWeight >= 240.0{
                        exerciseCount.append(base240/2)
                        exerciseCalorie += (base240/2)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                        
                    else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                        exerciseCount.append(base200/2)
                        exerciseCalorie += (base200/2)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    else if grabbedWeight < 200.0 {
                        exerciseCount.append(base160/2)
                        exerciseCalorie += (base160/2)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    
                    
                    
                }
                else if timeLength[picker.selectedRow(inComponent: 1)] == "60 min" {
                    
                    if grabbedWeight >= 240.0{
                        exerciseCount.append(base240)
                        exerciseCalorie += base240
                        
                    }
                        
                    else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                        exerciseCount.append(base200)
                        exerciseCalorie += base200
                        
                        
                    }
                    else if grabbedWeight < 200.0 {
                        exerciseCount.append(base160)
                        exerciseCalorie += base160
                        
                        
                        
                    }
                    
                    
                }
                
                
            }//end of walking statement
            
            else if exerciseType[picker.selectedRow(inComponent: 0)] == "Hiking"{
                base240 = 654
                base200 = 546
                base160 = 438
                
                exerciseArray.append(exerciseType[picker.selectedRow(inComponent: 0)])
                
                
                if timeLength[picker.selectedRow(inComponent: 1)] == "15 min" {
                    
                    if grabbedWeight >= 240.0{
                        exerciseCount.append(base240/4)
                        exerciseCalorie += base240/4
                        
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                        
                    else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                        exerciseCount.append(base200/4)
                        exerciseCalorie += (base200/4)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    else if grabbedWeight < 200.0 {
                        exerciseCount.append(base160/4)
                        exerciseCalorie += (base160/4)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    
                    
                    
                }
                else if timeLength[picker.selectedRow(inComponent: 1)] == "30 min" {
                    
                    if grabbedWeight >= 240.0{
                        exerciseCount.append(base240/2)
                        exerciseCalorie += (base240/2)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                        
                    else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                        exerciseCount.append(base200/2)
                        exerciseCalorie += (base200/2)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    else if grabbedWeight < 200.0 {
                        exerciseCount.append(base160/2)
                        exerciseCalorie += (base160/2)
                        finalExercise.text = String(exerciseCalorie)
                        
                    }
                    
                    
                    
                }
                else if timeLength[picker.selectedRow(inComponent: 1)] == "60 min" {
                    
                    if grabbedWeight >= 240.0{
                        exerciseCount.append(base240)
                        exerciseCalorie += base240
                        
                    }
                        
                    else if grabbedWeight < 240.0 && grabbedWeight >= 200.0  {
                        exerciseCount.append(base200)
                        exerciseCalorie += base200
                        
                        
                    }
                    else if grabbedWeight < 200.0 {
                        exerciseCount.append(base160)
                        exerciseCalorie += base160
                        
                        
                        
                    }
                    
                    
                }
                
                
          //end of activities
            
        }
        
        for index in 0..<(exerciseCount.count) {
            exerciseOutput.text = exerciseHolder! + "\n" + String(exerciseArray[index]) + "   " + String(exerciseCount[index])
            
        }
        finalExercise.text = String(exerciseCalorie)
       // exerciseOutput.text = exerciseType[picker.selectedRow(inComponent: 0)] + timeLength[picker.selectedRow(inComponent: 1)]
    }// add finish
    
    
    @IBAction func Clear(_ sender: UIButton) {
        
        exerciseOutput.text = ""
        exerciseCalorie = 0
        finalExercise.text = ""
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
   /*
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            _ = NSAttributedString(string: exerciseType[row], attributes: [NSForegroundColorAttributeName : UIColor.white])
            //return attributedString
            return exerciseType[row]
        } else {
            return timeLength[row]
        }
    }
    */
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        if component == 0 {
        let attributedString = NSAttributedString(string: exerciseType[row], attributes: [NSForegroundColorAttributeName : UIColor.white])
        return attributedString
        }
        else {
            let attributedString = NSAttributedString(string: timeLength[row], attributes: [NSForegroundColorAttributeName : UIColor.white])
            return attributedString
        }
    }
    
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "Save"{
            
            if let destination = segue.destination as? FirstViewController {
                destination.gotPersonal = Int(exerciseCalorie)
            }
            if let destination = segue.destination as? TrackingViewController {
                
                destination.gotExCalArray = exerciseCount
                destination.gotExerciseArray = exerciseArray
                
            }
            
            
        }
    }

    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        grabButton.layer.cornerRadius = 4
        addButton.layer.cornerRadius = 4
        clearButton.layer.cornerRadius = 4
        // Do any additional setup after loading the view.
        //self.pickerLabel.setValue(UIColor.white, forKey: "textColor")

       // pickerLabel.setValue(UIColor.white, forKeyPath: "textColor")
        
         self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
       // self.pickerLabel.setValue(UIColor.white, forKey: "textColor")
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
