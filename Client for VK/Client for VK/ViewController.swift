//
//  ViewController.swift
//  Client for VK
//
//  Created by Кирилл Харузин on 26/11/2019.
//  Copyright © 2019 Кирилл Харузин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let hideAction = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(hideAction)
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func pressButton(_ sender: Any) {
        guard let loginInput = login.text,
              let passwordInput = password.text else {
            return
        }
        print(loginInput + " " + passwordInput)
    }
    

}

