//
//  BaseViewController.swift
//  TakeIt
//
//  Created by 왕승현 on 2018. 2. 16..
//  Copyright © 2018년 TakeIt. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
  // Layout Constraints
  private(set) var didSetupConstraints = false

  
  init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.setNeedsUpdateConstraints()
  }
  
  override func updateViewConstraints() {
    if !self.didSetupConstraints {
      self.setupConstraints()
      self.didSetupConstraints = true
    }
    super.updateViewConstraints()
  }
  
  /// 레이아웃 세팅 하는 부분
  func setupConstraints() {
    // Override point
  }
}
