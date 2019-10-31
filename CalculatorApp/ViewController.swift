//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Roy, Bishakha on 10/31/19.
//  Copyright © 2019 Roy, Bishakha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UITextField!
    
    @IBOutlet weak var number2: UITextField!
    
    @IBOutlet weak var calculate: UILabel!
    
    var calculatedValue = ""
    override func viewDidLoad() {
           super.viewDidLoad()
        }
    
    
    @IBAction func Addition(_ sender: UIButton) {
        var dAdd = 0.0
    }
    
    @IBAction func Subtraction(_ sender: UIButton) {
         var dSubtract = 0.0
    }
    
    @IBAction func Multiplictaion(_ sender: UIButton) {
        var dMultiple = 0.0
    }
    
    @IBAction func Divide(_ sender: UIButton) {
          var dDivide = 0.0
    }
            
            
            var dDivide = 0.0
           
           // get the values in the TextFields, if a value exists and assign the values to constants
           // the TextFields are Optionals, so they could contain a value and they could also be nil
           if let value = numberTextField.text, let percent =
               tipPercentTextField.text {
               
               // trim whitespace that may exist at the begining or the ending of the constants
               let trimmedAmount = number.trimmingCharacters(in: .whitespaces)
               let trimmedPercent = number2.trimmingCharacters(in: .whitespaces)
               
               // check to make sure the trimmed constants aren't empty
               if (!trimmedAmount.isEmpty && !trimmedPercent.isEmpty){
                   
                   // Convert trimmed constants to Doubles
                   dNumber = Double(trimmedAmount)!
                   dNumber2 = Double(trimmedPercent)!
                   
                   // calculate the values
                   dCalculate = dNumber + dNumber2
                dCalculate = dNumber - dNumber2
                dCalculate = dNumber * dNumber2
                dCalculate = dNumber / dNumber2
               }
           }
           
           // convert calculated tip to a String
           // displayed it in the Label
           calculateValue.text = " is $\(String(dTip))"
           
          
    }

