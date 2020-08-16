//
//  ViewController.swift
//  SpeedyChat
//
//  Created by Mirana Abrar Anwar on 8/15/20.
//  Copyright © 2020 Mirana Anwar. All rights reserved.
//


import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    // dealing with the navigation bar in the welcome view screen
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    // bringing the navigation bar back after the welcome view screen
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = K.appName
//        var charIndex = 0.0
//        let titleText = "⚡️FlashChat"
//        for letter in titleText {
//            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
//                self.titleLabel.text?.append(letter)
//            }
//            charIndex += 1
//        }
       
    }
    

}
