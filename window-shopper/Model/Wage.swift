//
//  Wage.swift
//  window-shopper
//
//  Created by Maksim Okala-Kulak on 5/19/19.
//  Copyright © 2019 Maksim Okala-Kulak. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double ) -> Int {
        return Int(ceil(price / wage))
    }
}
