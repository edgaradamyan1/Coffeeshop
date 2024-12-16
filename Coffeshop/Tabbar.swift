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
  let orderView = UINavigationController(rootViewController: OrderViewController(nibName: "OrderViewController", bundle: nil))
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    shopMenu.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "home"), selectedImage: UIImage(named: "home"))
    orderView.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "orders"), selectedImage: UIImage(named: "orders"))

    setViewControllers([shopMenu,orderView], animated: true)
    
    tabBar.isTranslucent = false
    tabBar.tintColor = UIColor(named: "customColor")
    
  }
  
  
  
}
