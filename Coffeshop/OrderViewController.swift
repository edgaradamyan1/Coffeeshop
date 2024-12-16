//
//  OrderViewController.swift
//  Coffeshop
//
//  Created by Edgar Adamyan on 16.12.24.
//

import UIKit

class OrderViewController: UIViewController {
  
  
 
  
  @IBOutlet weak var textLabel: UILabel!
  @IBOutlet weak var orderMethodControl: UISegmentedControl!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      orderMethodControl.selectedSegmentTintColor = UIColor(named: "customColor")
      orderMethodControl.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }


    
 
}
