//
//  CurrencyTextFiled.swift
//  window-shopper
//
//  Created by Maksim Okala-Kulak on 5/18/19.
//  Copyright © 2019 Maksim Okala-Kulak. All rights reserved.
//

import UIKit

class CurrencyTextFiled: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
            backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
            layer.cornerRadius = 4.0
            textAlignment = .center
        
    }
}
