//
//  IngridientsViewController.swift
//  Project_Navigation
//
//  Created by user on 14.05.2022.
//

import UIKit

class IngridientsViewController: UIViewController {
    
    @IBOutlet weak var pizzaImage: UIImageView!
    @IBOutlet weak var pizzaLabel: UILabel!
    
    @IBOutlet var selectIngridients: [UISwitch]!
    @IBOutlet var allIngridients:[UILabel]!
    

    var namePizza = ""
    var imagePizza = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pizzaImage.image = imagePizza
        pizzaLabel.text = namePizza

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            var number = 2
            var order = "1 pizza \(namePizza) \n"
        for (index, value) in selectIngridients.enumerated() {
                if selectIngridients[index].isOn {
                    order += String(number) + " " + (allIngridients[index].text ?? "") + "\n"
                    number += 1
                }
            guard let destination = segue.destination as? PaymentViewController else {return}
            if segue.identifier == "PaymentViewController"{
            destination.orderFinal = order
        }
      }
       
    }
   

}
