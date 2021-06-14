//
//  UIApplication+Extensions.swift
//  CoffeeShop
//
//  Created by Bahriye Begüm ÜLTAN GÜNGÖR on 23.09.2020.
//  Copyright © 2020 Bahriye Begüm ÜLTAN GÜNGÖR. All rights reserved.
//

import UIKit

extension UIApplication {
  class func changeRoot(with viewController: UIViewController) {
    guard let window = UIApplication.shared.keyWindow else {
      return
    }
    
    guard let rootViewController = window.rootViewController else {
      return
    }
    
    viewController.view.frame = rootViewController.view.frame
    viewController.view.layoutIfNeeded()
    
    UIView.transition(with: window, duration: 0.3, options: .transitionCrossDissolve, animations: {
      window.rootViewController = viewController
    }, completion: nil)
  }
}
