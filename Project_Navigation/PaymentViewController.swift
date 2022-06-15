//
//  PaymentViewController.swift
//  Project_Navigation
//
//  Created by user on 15.05.2022.
//

import UIKit

class PaymentViewController: UIViewController {
    
    @IBOutlet weak var allOrderLabel: UILabel!
    
    @IBOutlet weak var cardSwitch: UISwitch!
    @IBOutlet weak var cashSwitch: UISwitch!
    
    
    var orderFinal = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allOrderLabel.numberOfLines = 5
        
        allOrderLabel.text = orderFinal
    }
    
    @IBAction func payBotton(_ sender: Any) {
        if cardSwitch.isOn && cashSwitch.isOn{
            let alert = UIAlertController(title: "You can select only one payment method", message: "Please try again", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
        }else if cardSwitch.isOn || cashSwitch.isOn {
            let alert = UIAlertController(title: "Order has been paid", message: "Your order will be delivered within 15 minutes. Bon appetit", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) { action in
                self.navigationController?.popToViewController((self.navigationController?.viewControllers[1])!, animated: true)
            }
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
            
        }else {
            let alert = UIAlertController(title: "You haven't select a payment method", message: "Please try again", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
    }
    
   
   
}
