//
//  Coffee.swift
//  CoffeeShop
//
//  Created by Bahriye Begüm ÜLTAN GÜNGÖR on 23.09.2020.
//  Copyright © 2020 Bahriye Begüm ÜLTAN GÜNGÖR. All rights reserved.
//

import Foundation

struct Coffee {
  var name: String
  var icon: String
  var price: Float
}

extension Coffee: Hashable {
  var hashValue: Int {
    return name.hashValue
  }
}

extension Coffee: Equatable {
  static func == (lhs: Coffee, rhs: Coffee) -> Bool {
    return (lhs.name == rhs.name &&
      lhs.icon == rhs.icon &&
      lhs.price == rhs.price)
  }
}
