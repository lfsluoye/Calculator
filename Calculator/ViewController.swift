//
//  ViewController.swift
//  Calculator
//
//  Created by lifushuai on 16/4/26.
//  Copyright © 2016年 lifushuai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    
    var userIsInTypeingNumber : Bool = false

    @IBAction func appendDight(sender: UIButton) {

        let digit = sender.currentTitle!
        if userIsInTypeingNumber {
            display.text = display.text! + digit
        }else{
            display.text = digit
            userIsInTypeingNumber = true
        }
    }
    
    
    
    //定义一个数组 存储 数字
    var operandStack = Array<Double>()
    
    @IBAction func enter() {
        userIsInTypeingNumber = false;
        operandStack.append(displayValue)
        print("operandStack = \(operandStack)")
    }
    
    var displayValue : Double {
        get {
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        
        set {
            display.text = "\(newValue)"
            userIsInTypeingNumber = false
        }
    }
    


}

