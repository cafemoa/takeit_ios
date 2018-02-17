//
//  UIDevice+Extension.swift
//  TakeIt
//
//  Created by 왕승현 on 2018. 2. 17..
//  Copyright © 2018년 TakeIt. All rights reserved.
//

import Foundation
import UIKit

extension UIDevice {
  enum ScreenType {
    case small  // iphone 5, SE
    case normal // iphone 6, 7
    case big    // iphone 6, 7 plus
    case x // iphone x
    case Unknown
  }
  
  var screenType: ScreenType {
    if !isiPhone {
      return .small
    }
    switch UIScreen.main.nativeBounds.height {
    case 0...1136:
      return .small
    case 1334:
      return .normal
    case 2208:
      return .big
    case 2436:
      return .x
    default:
      return .Unknown
    }
  }
}
