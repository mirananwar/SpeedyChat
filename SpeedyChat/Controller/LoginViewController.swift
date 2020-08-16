//
//  LoginViewController.swift
//  SpeedyChat
//
//  Created by Mirana Abrar Anwar on 8/15/20.
//  Copyright © 2020 Mirana Anwar. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        // Use Firebase library to configure APIs
        if let email = emailTextfield.text, let password = passwordTextfield.text {
        Auth.auth().signIn(withEmail: email, password: password) {authResult, error in
            if let e = error{
                print(e)
            } else {
                self.performSegue(withIdentifier: K.loginSegue, sender: self)
            }
        }
        }
}
}
