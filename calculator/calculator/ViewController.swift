//
//  ViewController.swift
//  calculator
//
//  Created by Khadisha Bekkozhina on 10.07.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var firstInt: UITextField!
    @IBOutlet weak var secondInt: UITextField!
    
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiplicationButton: UIButton!
    @IBOutlet weak var dividingButton: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func toched(_ sender: Any) {
        
        let a = Double(firstInt.text!)
        let b = Double(secondInt.text!)
        
        resultLabel.text = calculate(a!, b!, "+")
    }
    
    
    @IBAction func touchedMinus(_ sender: Any) {
        
        let a = Double(firstInt.text!)
        let b = Double(secondInt.text!)
        
        resultLabel.text = calculate(a!, b!, "-")
    }
    
    
    @IBAction func touchedMultiplication(_ sender: Any) {
        
        let a = Double(firstInt.text!)
        let b = Double(secondInt.text!)
        
        resultLabel.text = calculate(a!, b!, "*")
    }
    
    
    @IBAction func toucheDividing(_ sender: Any) {
        let a = Double(firstInt.text!)
        let b = Double(secondInt.text!)
        
        if b == 0 {
            resultLabel.text = "Деление на ноль"
        } else {
            resultLabel.text = calculate(a!, b!, "/")
        }
    }
    
    
    
    
    
    
    
    func calculate(_ a: Double, _ b: Double, _ operation: String) -> String {
        
        var result: Double = 0
        
        switch operation {
            case "+":
                result = a + b
            case "-":
                result = a - b
            case "*":
                result = a * b
            case "/":
                result = a / b
            default:
                break
        }
        
        return String(result)
    }
}

