//
//  StartScreenViewController.swift
//  Coffeshop
//
//  Created by Edgar Adamyan on 15.12.24.
//

import UIKit

class StartScreenViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  
  @IBAction func pushToTabBar(_ sender: UIButton) {
  
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    let vc = storyBoard.instantiateViewController(withIdentifier: "Tabbar")
    (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.rootViewController = vc
    
    /*
     // other Method
     if let vc2 = storyBoard.instantiateViewController(withIdentifier: "Tabbar") as? Tabbar{
     if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene{
     windowScene.windows.first?.rootViewController = vc2
     windowScene.windows.first?.makeKeyAndVisible()
     }
     }
     */
  }
}
