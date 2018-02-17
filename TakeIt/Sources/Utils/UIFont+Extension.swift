//
//  UIFont+Extension.swift
//  TakeIt
//
//  Created by 왕승현 on 2018. 2. 16..
//  Copyright © 2018년 TakeIt. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
  
  class func bold(_ size: CGFloat) -> UIFont {
    return UIFont.font(size: size, name: "SpoqaHanSansBold")
  }
  
  class func light(_ size: CGFloat) -> UIFont {
    return UIFont.font(size: size, name: "SpoqaHanSansLight")
  }
  
  class func regular(_ size: CGFloat) -> UIFont {
    return UIFont.font(size: size, name: "SpoqaHanSansRegular")
  }
  
  class func thin(_ size: CGFloat) -> UIFont {
    return UIFont.font(size: size, name: "SpoqaHanSansThin")
  }
  
  class func font(size: CGFloat, name: String) -> UIFont {
    if UIDevice().screenType == .small {
      return UIFont(name: name, size: size - 2)!
    }
    return UIFont(name: name, size: size)!
  }
}
