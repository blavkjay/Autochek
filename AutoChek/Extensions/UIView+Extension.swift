//
//  UIView+Extension.swift
//  AutoChek
//
//  Created by OLAJUWON BALOGUN on 02/09/2020.
//  Copyright © 2020 OLAJUWON BALOGUN. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
   class func fromNib<T: UIView>() -> T {
          return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
      }
}
