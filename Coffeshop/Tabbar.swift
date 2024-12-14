//
//  Tabbar.swift
//  Coffeshop
//
//  Created by Edgar Adamyan on 12.12.24.
//

import UIKit

class Tabbar: UITabBarController {
  
  let startScreen = UINavigationController(rootViewController: StartScreen(nibName: "StartScreen", bundle: nil))
  let shopMenu = ShopMenu(nibName: "ShopMenu", bundle: nil)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    shopMenu.tabBarItem = UITabBarItem(title: "house", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house"))

    setViewControllers([startScreen], animated: true)
    startScreen.tabBarController?.isTabBarHidden = true
    tabBar.isTranslucent = false
   
    
  }
  
  
  
}
