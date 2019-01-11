	//
//  ViewController.swift
//  Calculator
//
//  Created by Abeer  on 7/11/18.
//  Copyright © 2018 Abeer . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var allOperators: [UIButton]!
    @IBOutlet var allNumbers: [UIButton]!
    @IBOutlet weak var finalResult: UILabel!
    
    var Holder : Double?
    {
        didSet{
            var text : String?
            if Holder != nil {
                text = String(Result) + Operator! + String(Holder!)
                finalResult.text = text
            }
        }
    }
    var Operator : String?
    {
        didSet{
            var text : String?
            if Operator != nil && Holder == nil {
                text = String(Result) + Operator!
                finalResult.text = text
            }
        }
    }
    var Decimal = false
    var clickEqual = false
    var Result : Double = 0
    {
        didSet{
            if (Result != 0 && Operator == nil && Holder == nil) || clickEqual {
                let text : String? = String(Result)
                finalResult.text = text
            }
        }
    }
    //--------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //------------------------------------------------------
        @IBAction func buttonClicked(_ sender: UIButton) {
        if allNumbers.contains(sender){
            if sender.titleLabel?.text == "."{
                Decimal = true
            }
            if Operator == nil {
                if  !Decimal {
                    let intRes = Int(Result)
                    let res = String(intRes) + sender.titleLabel!.text!
                    Result = Double(res)!
                }else {
                    var res = String(Result)
                    res.removeLast()
                    res += sender.titleLabel!.text!
                    Result = Double(res)!
                }
            }else {
                var res : String?
                if Holder != nil  {
                    if !Decimal {
                        let intHold = Int(Holder!)
                        res = String(intHold) + sender.titleLabel!.text!
                    }else {
                        var hold = String(Holder!)
                        hold.removeLast()
                        hold += sender.titleLabel!.text!
                        res = hold
                    
                    }
                }else {
                    res = sender.titleLabel!.text!
                }
                Holder = Double(res!)
            }
        }else {
            if Operator == nil && sender.titleLabel?.text != "C" {
                Operator = sender.titleLabel?.text
                Decimal = false
            }else if sender.titleLabel?.text == "C" {
                if Holder != nil {
                    var hold = String(Holder!)
                    hold.removeLast()
                    Holder = Double(hold)
                }else if Holder == nil && Operator != nil {
                    Operator = nil
                }else {
                    var hold = String(Result)
                    hold.removeLast()
                    Result = Double(hold)!
                }
            }else if Operator != nil && Holder != nil {
                Decimal = false
                let text = Operator! //sender.titleLabel?.text!{
                switch text {
                    case "/" :
                        Result = Result / Holder!
                        Operator = nil
                        Holder = nil
                    
                    case "X" :
                        Result = Result * Holder!
                        Operator = nil
                        Holder = nil
                    
                    case "+" :
                        Result = Result + Holder!
                        Operator = nil
                        Holder = nil
                    
                    case "-" :
                        Result = Result - Holder!
                        Operator = nil
                        Holder = nil
                    
                    default:
                        Holder = nil
                        Operator = nil
                }
            }
            
        }
    }
}

