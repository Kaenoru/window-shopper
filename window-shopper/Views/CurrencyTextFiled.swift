//
//  CurrencyTextFiled.swift
//  window-shopper
//
//  Created by Maksim Okala-Kulak on 5/18/19.
//  Copyright © 2019 Maksim Okala-Kulak. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextFiled: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 32
        let currencyLbl = UILabel(frame: CGRect(
            x: (frame.size.height - size) / 2,
            y: (frame.size.height / 2) - (size / 2),
            width: size,
            height: size ))
        currencyLbl.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.1585241866)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7174657534)
        currencyLbl.layer.cornerRadius = 4.0
        currencyLbl.clipsToBounds = true // required to always draw cornered radius
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current // default behavior
        currencyLbl.text = formatter.currencySymbol
        
        addSubview(currencyLbl)
        
    }
    
    override func prepareForInterfaceBuilder() {
        customizeInputField()
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeInputField()
    }
    
    
    func customizeInputField() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 4.0
        textAlignment = .center
        clipsToBounds = true // required to always draw cornered radius
        
        if let p = placeholder {
            let place = NSAttributedString(
                string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6426583904)])
            
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6424443493)
        }
    }
}
