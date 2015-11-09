//
//  ViewController.swift
//  tips
//
//  Created by HV Fenrir on 11/8/15.
//  Copyright © 2015 HV Fenrir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18,0.2,0.25]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let billAmount = (billField?.text ?? "" as NSString ?? "").doubleValue
        var tip: Double
        var total: Double
        tip = billAmount * tipPercentage
        total = billAmount + tip
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        tipLabel.text = String(format: "$%.2f" ,tip)
        totalLabel.text = String(format: "$%.2f" ,total)
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    @IBAction func blackButton(sender: AnyObject) {
        self.view.backgroundColor = UIColor.blackColor()
    }
    
    @IBAction func whiteButton(sender: AnyObject) {
        self.view.backgroundColor = UIColor.whiteColor()
    }
}

