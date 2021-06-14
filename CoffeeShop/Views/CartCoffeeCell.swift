//
//  CartCoffeeCell.swift
//  CoffeeShop
//
//  Created by Bahriye Begüm ÜLTAN GÜNGÖR on 23.09.2020.
//  Copyright © 2020 Bahriye Begüm ÜLTAN GÜNGÖR. All rights reserved.
//

import UIKit

class CartCoffeeCell: UITableViewCell {
  @IBOutlet weak var iconImageView: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var countLabel: UILabel!
  @IBOutlet weak var totalPriceLabel: UILabel!
  
  func configure(with cartItem: CartItem) {
    iconImageView.image = UIImage(named: cartItem.coffee.icon)
    nameLabel.text = cartItem.coffee.name
    countLabel.text = "\(cartItem.count) cup of coffee"
    totalPriceLabel.text = CurrencyFormatter.turkishLirasFormatter.string(from: cartItem.totalPrice)
  }
}
