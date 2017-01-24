//
//  ViewController.swift
//  tipcalculator
//
//  Created by Carlos Lemus on 1/24/17.
//  Copyright © 2017 Carlos Lemus. All rights reserved.
//

import UIKit
class ViewController: UIViewController{

    @IBOutlet weak var lbl_tip1: UILabel!
    @IBOutlet weak var lbl_total1: UILabel!
    
    
    @IBOutlet weak var txt_bill: UITextField!
    @IBOutlet weak var txt_tip: UITextField!
    @IBOutlet weak var txt_tax: UITextField!
    
    @IBAction func btn_calculate(_ sender: Any) {
        let bill = NSDecimalNumber(string: txt_bill.text)
        let tax = NSDecimalNumber(string: txt_tax.text)
        let tip = NSDecimalNumber(string: txt_tip.text)
        let tip_calc = (tip as Decimal) / 100.0 * (bill as Decimal)
        let tax_calc = (tax as Decimal) / 100.0 * (bill as Decimal) + (bill as Decimal)
        let total = tip_calc + tax_calc
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        
        lbl_tip1.text = formatter.string(from: (tip_calc as NSNumber))
        lbl_total1.text = formatter.string(from: (total as NSNumber))
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

