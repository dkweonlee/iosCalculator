//
//  ViewController.swift
//  Calculator
//
//  Created by Daniel Kweon-lee on 10/4/17.
//  Copyright © 2017 Daniel Kweon-lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    var userIsInMiddleOfTyping = false
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
            userIsInMiddleOfTyping = true
        }
    }
    
    var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInMiddleOfTyping = false
        if let mathmaticalSymbol = sender.currentTitle{
            switch mathmaticalSymbol {
            case "π":
                displayValue = Double.pi
            case "√":
                displayValue = sqrt(displayValue)
            default:
                break
            }
        }
        
    }
    
}

