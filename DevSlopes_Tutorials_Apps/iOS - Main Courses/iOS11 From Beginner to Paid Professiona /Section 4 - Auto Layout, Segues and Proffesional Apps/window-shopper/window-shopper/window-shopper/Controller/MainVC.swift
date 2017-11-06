//
//  ViewController.swift
//  window-shopper
//
//  Created by Jakub Majewski on 29.09.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    @IBOutlet weak var resultIbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        hideShow(hidden: true)
        
    }
    
    @objc func calculate(){
        if let wageTxt = self.wageTxt.text, let priceTxt = self.priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                self.resultIbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                hideShow(hidden: false)
            }
        }
        
    }

    @IBAction func clearCalculatorPress(_ sender: Any) {
        hideShow(hidden: true)
        wageTxt.text = " "
        priceTxt.text = " "
    }
    
    func hideShow(hidden: Bool){
        if hidden {
            resultIbl.isHidden = true
            hoursLbl.isHidden = true
        } else {
            resultIbl.isHidden = false
            hoursLbl.isHidden = false
        }
    }
    
}

