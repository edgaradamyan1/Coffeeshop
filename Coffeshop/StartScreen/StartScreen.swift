//
//  StartScreen.swift
//  Coffeshop
//
//  Created by Edgar Adamyan on 12.12.24.
//

import UIKit

class StartScreen: UIViewController {

  @IBOutlet weak var label: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
  
    
  }
  
  
  
  
  @IBAction func pushController(_ sender: UIButton) {
    
    let vc = ShopMenu(nibName: "ShopMenu", bundle: nil)
    vc.hidesBottomBarWhenPushed = false
    navigationController?.pushViewController(vc, animated: true)
  }
  
  
}

