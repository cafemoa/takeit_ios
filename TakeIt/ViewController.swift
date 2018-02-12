//
//  ViewController.swift
//  TakeIt
//
//  Created by 왕승현 on 2018. 2. 12..
//  Copyright © 2018년 TakeIt. All rights reserved.
//

import UIKit
import Then

class SplashViewController: UIViewController {
  
  // MARK: UI
  
  fileprivate let splashImageView = UIImageView().then {
    $0.image = UIImage(named: "splash")
  }
  fileprivate let logoIconView = UIImageView().then {
    $0.image = UIImage(named: "soongsil")
  }

  // MARK: View Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.addSubview(self.splashImageView)
    self.view.addSubview(self.logoIconView)
    
    self.splashImageView.snp.makeConstraints { make in
      make.edges.equalToSuperview()
    }
    self.logoIconView.snp.makeConstraints { make in
      make.bottom.equalTo(-70)
      make.centerX.equalToSuperview()
      make.width.equalTo(160)
      make.height.equalTo(26)
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}
