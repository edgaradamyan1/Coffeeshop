//
//  OrderViewController.swift
//  Coffeshop
//
//  Created by Edgar Adamyan on 16.12.24.
//

import UIKit

class OrderViewController: UIViewController {
  
  private var hiddenTextField: UITextField = {
    let textField = UITextField()
    textField.alpha = 0.0
    textField.keyboardType = .default
    return textField
  }()
  
  @IBOutlet weak var adressLabel: UILabel!
  @IBOutlet weak var deliveryMethodLabel: UILabel!
  @IBOutlet weak var orderMethodControl: UISegmentedControl!
  

  
    override func viewDidLoad() {
        super.viewDidLoad()
      view.addSubview(hiddenTextField)
      hiddenTextField.delegate = self
      orderMethodControl.selectedSegmentTintColor = UIColor(named: "customColor")
      orderMethodControl.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)

    }

  @IBAction func editAdressButton(_ sender: UIButton) {
    hiddenTextField.becomeFirstResponder()
  }
  @IBAction func actionSegmentControl(_ sender: UISegmentedControl) {
    let selectedIndex = sender.selectedSegmentIndex
    if selectedIndex == 0{
      deliveryMethodLabel.text = "Your Adress:"
      adressLabel.text = " "
    }else if selectedIndex == 1{
      deliveryMethodLabel.text = "Our Adress:"
      adressLabel.text = "Herrengasse 14, 1010 Vienna"
    }
  }
  
    
 
}

extension OrderViewController: UITextFieldDelegate{
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    if let currentText = textField.text as? NSString{
      let updatedText = currentText.replacingCharacters(in: range, with: string)
      adressLabel.text = updatedText
    }
    return true
  }
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    if let newText = textField.text, !newText.isEmpty{
      
    }
    textField.resignFirstResponder()
    textField.text = ""
    return true
  }
  
}

