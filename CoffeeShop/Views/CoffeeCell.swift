//
//  CoffeeCell.swift
//  CoffeeShop
//
//  Created by Bahriye Begüm ÜLTAN GÜNGÖR on 23.09.2020.
//  Copyright © 2020 Bahriye Begüm ÜLTAN GÜNGÖR. All rights reserved.
//

import UIKit

class CoffeeCell: UITableViewCell {
  @IBOutlet weak var iconImageView: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  
  func configure(with coffee: Coffee) {
    iconImageView.image = UIImage(named: coffee.icon)
    nameLabel.text = coffee.name
  }
}
