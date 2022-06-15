//
//  MenuViewController.swift
//  Project_Navigation
//
//  Created by user on 14.05.2022.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var pizzaButton: UIButton!
    
    @IBOutlet weak var sushiBotton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pizzaButton.layer.borderWidth = 2
        sushiBotton.layer.borderWidth = 2
    }
    


}
