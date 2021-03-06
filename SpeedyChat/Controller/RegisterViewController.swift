//
//  RegisterViewController.swift
//  SpeedyChat
//
//  Created by Mirana Abrar Anwar on 8/15/20.
//  Copyright © 2020 Mirana Anwar. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error{
                print(e.localizedDescription)
            } else{
                // Navigate to the ChatViewController
                self.performSegue(withIdentifier: K.registerSegue, sender: self)
            }
        }
        }
    }
    
}
