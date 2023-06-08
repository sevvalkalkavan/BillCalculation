//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billValue: UITextField!
    
    @IBOutlet weak var tip0: UIButton!
    @IBOutlet weak var tip10: UIButton!
    @IBOutlet weak var tip20: UIButton!
    @IBOutlet weak var splitLabel: UILabel!
    
    var tip : Int = 0
    var split : Int = 0
    var result : Int = 0
    var bill : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func tipPressed(_ sender: UIButton) {
        if sender.currentTitle == "10%"{
            tip10.isSelected = true
            tip = 10
            print(10)
            tip20.isSelected = false
            tip0.isSelected = false
        }else if sender.currentTitle == "20%"{
            tip20.isSelected = true
            tip10.isSelected = false
            tip0.isSelected = false
            print(20)
            tip = 20
        }else{
            tip0.isSelected = true
            print(0)
            tip20.isSelected = false
            tip10.isSelected = false
            tip = 0
        }
         
        billValue.endEditing(true)
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        let stepperValue = sender.value
        splitLabel.text = String(format: "%.0f", stepperValue)
        split =  Int(stepperValue)
        
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "toResultVC", sender: self)
        print(split)
        bill = Int(billValue.text!) ?? 0
        result = bill * (1 + tip) / split
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultVC" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.tip = tip
            destinationVC.split = splitLabel.text!
            destinationVC.result = result
        }
    }
    
}

