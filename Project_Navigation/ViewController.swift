//
//  ViewController.swift
//  Project_Navigation
//
//  Created by user on 14.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK - Methods
    //Create login and password
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let correctLogPas = verifyLogPas()
        
        if !correctLogPas {
            showError()
        }
        return correctLogPas
    }
    
    
    func verifyLogPas() -> Bool {
        guard let login = loginTextField.text,
              let password = passwordTextField.text else {return false}
        
        if login == "1111" && password == "qwer" {
            return true
        }else {
            return false
        }
        
    }
    
    func showError() {
        let alert = UIAlertController(title: "Error", message: "Please try again", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    //Create hide keybord by tap
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
   
    
}

