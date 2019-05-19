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
        
        if let p = placeholder {
            let place = NSAttributedString(
                string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6426583904)])
            
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6424443493)
        }
    }
}
