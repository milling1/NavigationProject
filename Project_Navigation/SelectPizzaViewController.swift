//
//  SelectPizzaViewController.swift
//  Project_Navigation
//
//  Created by user on 14.05.2022.
//

import UIKit

class SelectPizzaViewController: UIViewController {
    
    @IBOutlet weak var margaritaImage: UIImageView!
    @IBOutlet weak var napolitanaImage: UIImageView!
    @IBOutlet weak var margaritaLabel: UILabel!
    @IBOutlet weak var napolitanaLabel: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? IngridientsViewController else {return}
        if segue.identifier == "Margarita" {
            destinationVC.imagePizza = margaritaImage.image ?? UIImage(named: "questionmark.video.ar")!;
            destinationVC.namePizza = margaritaLabel.text ?? "Not found"
        }else if segue.identifier == "Napolitana" {
            destinationVC.imagePizza = napolitanaImage.image ?? UIImage(named: "questionmark.video.ar")!;
            destinationVC.namePizza = napolitanaLabel.text ?? "Not found"
        }
    }
    
    
    
    @IBAction func margaritaButton(_ sender: Any) {        
        
    }
    

    @IBAction func napolitanaButton(_ sender: Any) {
    }
    

}
