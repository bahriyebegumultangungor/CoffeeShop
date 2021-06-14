//
//  CurrencyFormatter.swift
//  CoffeeShop
//
//  Created by Bahriye Begüm ÜLTAN GÜNGÖR on 23.09.2020.
//  Copyright © 2020 Bahriye Begüm ÜLTAN GÜNGÖR. All rights reserved.
//

import Foundation

enum CurrencyFormatter {
  static let turkishLirasFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.locale = Locale(identifier: "tr_TR")
    return formatter
  }()
}

extension NumberFormatter {
  func string(from float: Float) -> String? {
    return self.string(from: NSNumber(value: float))
  }
  
  func string(from int: Int) -> String? {
    return self.string(from: NSNumber(value: int))
  }
}
