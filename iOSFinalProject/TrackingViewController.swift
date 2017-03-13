//
//  TrackingViewController.swift
//  iOSFinalProject
//
//  Created by Gwizdalski, Eric on 2/28/17.
//  Copyright © 2017 Gwizdalski, Marcille, Wong. All rights reserved.
//

import UIKit
import Charts

class TrackingViewController: UIViewController {

    var gotFoodArray: [String] = []
    var gotCalorieArray: [Int] = []
    
    var gotExerciseArray: [String] = []
    var gotExCalArray: [Int] = []
    
    @IBOutlet var pieChartView: PieChartView!
    
    
    @IBAction func setCalPie(_ sender: UIButton) {
        setChart1(dataPoints: gotFoodArray, values: gotCalorieArray)
    }
    
    
    @IBAction func setExPie(_ sender: UIButton) {
        setChart2(dataPoints: gotExerciseArray, values: gotExCalArray)
    }

    func setChart1(dataPoints: [String], values: [Int]){
        
        var dataEntries: [PieChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry1 = PieChartDataEntry(value: Double(gotCalorieArray[i]), label: gotFoodArray[i], data:  gotCalorieArray[i] as AnyObject)
            
            dataEntries.append(dataEntry1)
        }
        print(dataEntries[0].data)
        let pieChartDataSet = PieChartDataSet(values: dataEntries, label: "Total:")
        let pieChartData = PieChartData(dataSet: pieChartDataSet)
        pieChartView.data = pieChartData
        
        var colors: [UIColor] = []
        
        for _ in 0..<dataPoints.count {
            let red = Double(arc4random_uniform(256))
            let green = Double(arc4random_uniform(256))
            let blue = Double(arc4random_uniform(256))
            
            let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
            colors.append(color)
        }
        
        pieChartDataSet.colors = colors
    }

    
    func setChart2(dataPoints: [String], values: [Int]){
        
        var dataEntries: [PieChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry1 = PieChartDataEntry(value: Double(gotExCalArray[i]), label: gotExerciseArray[i], data:  gotExCalArray[i] as AnyObject)
            
            dataEntries.append(dataEntry1)
        }
        print(dataEntries[0].data)
        let pieChartDataSet = PieChartDataSet(values: dataEntries, label: "Total:")
        let pieChartData = PieChartData(dataSet: pieChartDataSet)
        pieChartView.data = pieChartData
        
        var colors: [UIColor] = []
        
        for _ in 0..<dataPoints.count {
            let red = Double(arc4random_uniform(256))
            let green = Double(arc4random_uniform(256))
            let blue = Double(arc4random_uniform(256))
            
            let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
            colors.append(color)
        }
        
        pieChartDataSet.colors = colors
    }

        
    
    @IBAction func getPieInfo(_ sender: UIButton) {
          let food_vc:CalorieIntakeViewController = self.tabBarController?.viewControllers![1] as! CalorieIntakeViewController
        
        gotFoodArray  = food_vc.foodArray
        gotCalorieArray = food_vc.calorieArray
        
        
        let ex_vc:ExerciseIntakeViewController = self.tabBarController?.viewControllers![4] as! ExerciseIntakeViewController
        
        gotExerciseArray = ex_vc.exerciseArray
        gotExCalArray = ex_vc.exerciseCount
            
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // setChart(dataPoints: gotFoodArray, values: gotCalorieArray)
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
