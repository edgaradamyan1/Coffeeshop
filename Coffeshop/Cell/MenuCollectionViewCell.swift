//
//  MenuCollectionViewCell.swift
//  Coffeshop
//
//  Created by Edgar Adamyan on 13.12.24.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var productImage: UIImageView!
  @IBOutlet weak var descriptionLabel: UILabel!
  @IBOutlet weak var preisLabel: UILabel!
  
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    productImage.layer.cornerRadius = 10
    }

}
