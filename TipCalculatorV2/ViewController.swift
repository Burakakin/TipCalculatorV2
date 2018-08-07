//
//  ViewController.swift
//  TipCalculatorV2
//
//  Created by Burak Akin on 12.07.2018.
//  Copyright © 2018 Burak Akin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var amountPerPersonLabel: UILabel!
    @IBOutlet weak var tipPercentage: UISlider!
    @IBOutlet weak var personCount: UISlider!
    
    @IBAction func tipPercentageSliderValueChanged(_ sender: UISlider) {
        let step: Float = 10
        print(sender.value)
        let roundedValue = roundf(sender.value / step) * step
        sender.value = roundedValue
        print(sender.value)
        calcuteEverything()
    }
    
    @IBAction func peoplecountValueChanged(_ sender: UISlider) {
        sender.value = roundf(sender.value)
        calcuteEverything()
        
    }
    
    @IBAction func editingChangedTextField(_ sender: UITextField) {
        //print(totalAmountTextField.text!)
        calcuteEverything()
    }
    
    
    func calcuteEverything(){
        let totalAmount = Double(totalAmountTextField.text!)
        let tipAmount = Double(tipPercentage.value)
        let tipCalculation = totalAmount!*tipAmount/100
        tipAmountLabel.text = "Tip: \(tipCalculation)"
        
        totalAmountLabel.text = "Total Bill: \(tipCalculation + totalAmount!)"
        amountPerPersonLabel.text = "Amount per person: \((tipCalculation + totalAmount!)/Double(personCount.value))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    

}

