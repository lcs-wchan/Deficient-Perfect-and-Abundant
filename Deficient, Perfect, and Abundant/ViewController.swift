//
//  ViewController.swift
//  Deficient, Perfect, and Abundant
//
//  Created by William Chan on 2020-03-09.
//  Copyright © 2020 WilliamChan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputBoxValue: UITextField!
    @IBOutlet weak var Result: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculate(_ sender: Any) {
        
        // Unwrap the optional string
        guard let someStringInput = inputBoxValue.text else {
            Result.text = "Hey, please enter something – an integer between 1 and 32500."
            return
        }
        
        // Take the string and try to make it an integer
        guard let integerInput = Int(someStringInput) else {
            Result.text  = "Please enter an integer."
            return
        }
        
        if integerInput < 0 && integerInput > 325000 {
            Result.text  = "Please enter an integer between 0 and 325000."
            return
        }
        
        

        //Make a running count
                var count = 0
        
        //Make a loop to add to the running count
                for num in 1...integerInput/2 {
                    if integerInput%num == 0{
                        count += num
                    }
                }
        // define deficient, perfect and abundant
        if count > integerInput {
            Result.text = "\(integerInput) is an abundant number."
        } else if count == integerInput {
            Result.text = "\(integerInput) is a perfect number"
        } else {
            Result.text = "\(integerInput) is a deficient number"
        }
        
    }
}

