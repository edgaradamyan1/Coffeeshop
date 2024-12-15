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
  
  var selectedProduct: CoffeProducts?

  
  override func viewDidLoad() {
        super.viewDidLoad()

    productImage.image = selectedProduct?.picture
    titleText.text = selectedProduct?.name
    descriptionText.text = selectedProduct?.description
    }


 

}
