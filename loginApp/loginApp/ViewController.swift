//
//  ViewController.swift
//  loginApp
//
//  Created by Виктор Калашник on 08.12.2020.
//

import UIKit

class ViewController: UIViewController {

    private let login = "admin"
    private let password = "12345"
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
  
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let loginInput = usernameField.text
        let passInput = passwordField.text
        
        if (loginInput == login) && (passInput == password) {
            return true
        } else {
            let alert = UIAlertController(title: "Ошибка", message: "Неверный логин или пароль", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            self.usernameField.text = ""
            self.passwordField.text = ""
            return false
        }
    }
}

   
