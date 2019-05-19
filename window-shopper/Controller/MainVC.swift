//
//  ViewController.swift
//  window-shopper
//
//  Created by Maksim Okala-Kulak on 5/18/19.
//  Copyright © 2019 Maksim Okala-Kulak. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTXT: CurrencyTextFiled!
    
    @IBOutlet weak var priceTXT: CurrencyTextFiled!
    
    
    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var hoursLbl: UILabel!
    
    func hideResultLabelsVisibility() {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideResultLabelsVisibility()
        
        let calcButton = UIButton(frame: CGRect(
            x: 0,
            y: 0,
            width: view.frame.size.width,
            height: 60
        ))
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.4760972799, blue: 0, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
     
        wageTXT.inputAccessoryView = calcButton
        priceTXT.inputAccessoryView = calcButton
        
        hideResultLabelsVisibility()
    }


    @objc func calculate() {
        if let wageTXT = wageTXT.text, let priceTXT = priceTXT.text {
            if let wage = Double(wageTXT), let price = Double(priceTXT) {
                view.endEditing(true)
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
            }
        }
    }
    
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        hideResultLabelsVisibility()
        wageTXT.text = ""
        priceTXT.text = ""
    }
    
    
}

