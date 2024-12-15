//
//  Tabbar.swift
//  Coffeshop
//
//  Created by Edgar Adamyan on 12.12.24.
//

import UIKit

class Tabbar: UITabBarController {
  
  let startScreen = UINavigationController(rootViewController: StartScreenViewController(nibName: "StartScreenViewController", bundle: nil))
  let shopMenu = UINavigationController(rootViewController: ShopMenu(nibName: "ShopMenu", bundle: nil))
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    shopMenu.tabBarItem = UITabBarItem(title: "house", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house"))
   

    setViewControllers([shopMenu], animated: true)
  
    tabBar.isTranslucent = false
    
  }
  
  
  
}
