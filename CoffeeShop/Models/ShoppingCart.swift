//
//  ShoppingCart.swift
//  CoffeeShop
//
//  Created by Bahriye Begüm ÜLTAN GÜNGÖR on 23.09.2020.
//  Copyright © 2020 Bahriye Begüm ÜLTAN GÜNGÖR. All rights reserved.
//

import Foundation

class ShoppingCart {
  
  static let shared = ShoppingCart()
  
  var coffees: [Coffee: Int] = [:]
  
  private init() {}
  
  func addCoffee(_ coffee: Coffee, withCount count: Int) {
    if let currentCount = coffees[coffee] {
      coffees[coffee] = currentCount + count
    } else {
      coffees[coffee] = count
    }
  }
  
  func removeCoffee(_ coffee: Coffee) {
    coffees[coffee] = nil
  }
  
  func getTotalCost() -> Float {
    return coffees.reduce(Float(0)) { $0 + ($1.key.price * Float($1.value)) }
  }
  
  func getTotalCount() -> Int {
    return coffees.reduce(0) { $0 + $1.value }
  }
  
  func getCartItems() -> [CartItem] {
    return coffees.map { CartItem(coffee: $0.key, count: $0.value) }
  }
}
