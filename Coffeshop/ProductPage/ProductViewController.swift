//
//  ProductViewController.swift
//  Coffeshop
//
//  Created by Edgar Adamyan on 13.12.24.
//

import UIKit

class ProductViewController: UIViewController {

  @IBOutlet weak var productImage: UIImageView!
  @IBOutlet weak var titleText: UILabel!
  @IBOutlet weak var descriptionText: UILabel!
  @IBOutlet weak var priceText: UILabel!
  
  var selectedProduct: CoffeProducts?

  
  override func viewDidLoad() {
        super.viewDidLoad()
    
    tabBarController?.isTabBarHidden = true
    self.title = "Details"
    navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "heart"), style: .plain, target: nil, action: nil)
    navigationItem.rightBarButtonItem?.tintColor = UIColor.black
   // navigationItem.leftBarButtonItem = UIBarButtonItem(title: "back", style: .plain, target: nil, action: #selector(goBack))
        
    productImage.layer.cornerRadius = 10
    productImage.image = selectedProduct?.picture
    titleText.text = selectedProduct?.name
    descriptionText.text = selectedProduct?.description
    priceText.text = "$ 0.00"
    
    
    }
  //does not work
  /*@objc func goBack(){
  // navigationController?.popViewController(animated: true)
  }*/

  @IBAction func smallSize(_ sender: UIButton) {
    if let price = selectedProduct?.price {
      priceText.text = "$ " + String(price-(price / 100 * 10))
    }
  }
  @IBAction func mediumSize(_ sender: UIButton) {
    if let price = selectedProduct?.price {
      priceText.text = "$ " + String(price)
    }
  }
  
  @IBAction func largeSize(_ sender: UIButton) {
    if let price = selectedProduct?.price {
      priceText.text = "$ " + String(price+(price / 100 * 30))
    }
  }
  
  @IBAction func orderButton(_ sender: UIButton) {
    let vc = OrderViewController(nibName: "OrderViewController", bundle: nil)
    navigationController?.pushViewController(vc, animated: true)
    vc.products = selectedProduct
  }
}
