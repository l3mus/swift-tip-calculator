//
//  ViewController3.swift
//  tipcalculator
//
//  Created by Carlos Lemus on 1/24/17.
//  Copyright © 2017 Carlos Lemus. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var txt_bill: UITextField!
    @IBOutlet weak var lbl_tax: UILabel!
    @IBOutlet weak var lbl_tip: UILabel!
    @IBOutlet weak var lbl_tip_cash: UILabel!
    @IBOutlet weak var lbl_total: UILabel!
    @IBAction func tax_stepper(_ sender: UIStepper) {
        lbl_tax.text =  String(sender.value)
    }
    @IBAction func tip_stepper(_ sender: UIStepper) {
        lbl_tip.text = String(sender.value)
    }
    @IBAction func btn_calculate(_ sender: UIButton) {
        let bill = NSDecimalNumber(string: txt_bill.text)
        let tax = NSDecimalNumber(string: lbl_tax.text)
        let tip = NSDecimalNumber(string: lbl_tip.text)
        let tip_calc = (tip as Decimal) / 100.0 * (bill as Decimal)
        let tax_calc = (tax as Decimal) / 100.0 * (bill as Decimal) + (bill as Decimal)
        let total = tip_calc + tax_calc
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        
        lbl_tip_cash.text = formatter.string(from: (tip_calc as NSNumber))
        lbl_total.text = formatter.string(from: (total as NSNumber))

    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
