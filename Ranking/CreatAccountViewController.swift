//
//  CreatAccountViewController.swift
//  Ranking
//
//  Created by Willy Su on 2018/2/5.
//  Copyright © 2018年 jianwei. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseAuth

class CreatAccountViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var NameTextField: UITextField!
    
    @IBAction func createAccountAction(_ sender: Any) {
        
        if emailTextField.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please enter your email and password", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
            
        } else {
            Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
                
                if error == nil {
                    print("You have successfully signed up")
                    //Goes to the Setup page which lets the user take a photo for their profile picture and also chose a username
                    
                   let vc = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController")
                    self.present(vc!, animated: true, completion: nil)
                    
                } else {
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
        
    }
    
    
    @IBAction func back(_ sender: Any) {
   presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
