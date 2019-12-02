//
//  ViewController.swift
//  Client for VK
//
//  Created by Кирилл Харузин on 26/11/2019.
//  Copyright © 2019 Кирилл Харузин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var signInLogin: UITextField!
    @IBOutlet weak var signInPassword: UITextField!
    
    private let rightLogin = "Kharuzin"
    private let rightPassword = "123456"
    
    @IBOutlet weak var logoVK: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let hideAction = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(hideAction)
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func loginButton(_ sender: Any) {
        guard let loginInput = signInLogin.text, !loginInput.isEmpty,
            let passwordInput = signInPassword.text, !passwordInput.isEmpty else {
                showAllert(title: "Error!", message: "Login or Password was not entered", titleAction: "OK")
        }
        print(loginInput + " " + passwordInput)
    }
    

}

