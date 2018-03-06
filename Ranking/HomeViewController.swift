//
//  HomeViewController.swift
//  Ranking
//
//  Created by Willy Su on 2018/2/7.
//  Copyright © 2018年 jianwei. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseAuth

class HomeViewController: UIViewController {
    
    @IBAction func logOutAction(_ sender: Any) {
        if Auth.auth().currentUser != nil {
            do {
                try Auth.auth().signOut()
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
                present(vc, animated: true, completion: nil)
                
            } catch let error as NSError {
                
                
                print(error.localizedDescription)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
 }
}
