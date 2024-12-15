//
//  ShopMenu.swift
//  Coffeshop
//
//  Created by Edgar Adamyan on 12.12.24.
//

import UIKit

class ShopMenu: UIViewController {
  
  var menuProducts: [CoffeProducts] = [
    CoffeProducts(name: "Cappucino", price: "2.70 €", description: "When foam takes center stage.", picture: UIImage(named: "cappuccino")),
    CoffeProducts(name: "Latte Macchiato", price: "2.50 €", description: "Milk with a coffee tan.", picture: UIImage(named: "latteMachiatto")),
    CoffeProducts(name: "Espresso", price: "1.99 €", description: "The legal way to wake up in 30 seconds.", picture: UIImage(named: "esspresso")),
    CoffeProducts(name: "Cafe Latte", price: "2.50 €", description: "Milk and Coffee", picture: UIImage(named: "latte"))
    
    
  ]
  
  @IBOutlet weak var promoText: UILabel!
  @IBOutlet weak var promo: UILabel!
  @IBOutlet weak var collectionView: UICollectionView!

  @IBOutlet weak var segmentControl: UISegmentedControl!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.hidesBackButton = true
    
    
    promo.layer.masksToBounds = true
    promo.layer.cornerRadius = 18
    segmentControl.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 9)], for: .normal)
    
    
    collectionView.delegate = self
    collectionView.dataSource = self
    collectionView.register(UINib(nibName: "MenuCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MenuCollectionViewCell")
    
    
    
  }
  
  
  
}

extension ShopMenu : UICollectionViewDelegate,UICollectionViewDataSource{
  

  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    menuProducts.count
    
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCollectionViewCell", for: indexPath)
    if let cell = cell as? MenuCollectionViewCell{
      let product = menuProducts[indexPath.row]
      cell.titleLabel.text = product.name
      cell.descriptionLabel.text = product.description
      cell.preisLabel.text = product.price
      cell.productImage.image = product.picture
      
    }
    return cell
  }
  
  
  
  
}
extension ShopMenu: UICollectionViewDelegateFlowLayout{
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    .init(width: collectionView.frame.width / 2 - 10 , height: collectionView.frame.height / 2 - 10 )
  }
  
  
}
