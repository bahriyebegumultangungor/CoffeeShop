//
//  CartItem.swift
//  CoffeeShop
//
//  Created by Bahriye Begüm ÜLTAN GÜNGÖR on 23.09.2020.
//  Copyright © 2020 Bahriye Begüm ÜLTAN GÜNGÖR. All rights reserved.
//

import Foundation

struct CartItem {
  let coffee: Coffee
  let count: Int
  let totalPrice: Float
  
  init(coffee: Coffee, count: Int) {
    self.coffee = coffee
    self.count = count
    self.totalPrice = Float(count) * coffee.price
  }
}
