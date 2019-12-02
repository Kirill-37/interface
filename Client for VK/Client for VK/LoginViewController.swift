//
//  ViewController.swift
//  Client for VK
//
//  Created by Кирилл Харузин on 26/11/2019.
//  Copyright © 2019 Кирилл Харузин. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    
    private let rightLogin = "Kharuzin"
    private let rightPassword = "123456"
   
    @IBOutlet weak var logoVK: UIImageView!
    
    @IBAction func loginButton (_ sender: UIButton) {
        hideKeyboard()
        guard
            let loginInput = login.text, !loginInput.isEmpty,
            let passwordInput = password.text, !passwordInput.isEmpty else {
                showAlert(title: "Ошибка", message: "Пожалуйста, введите данные", titleAction: "Ok")
                password.text = ""
                return
        }
        if loginInput == rightLogin && passwordInput == rightPassword {
            print(loginInput + " " + passwordInput)
        } else {
            showAlert(title: "Ошибка", message: "Вы ввели не корректные данные", titleAction: "Ok")
            login.text = ""
            password.text = ""
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let hideAction = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(hideAction)
        
        login.delegate = self
        password.delegate = self
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    func showAlert(title: String, message: String, titleAction: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: titleAction, style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        }
    
    func textFieldShouldReturn (_ textField: UITextField) -> Bool {
        if let nextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
            nextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
            return true;
        }
        return false
    }
}
