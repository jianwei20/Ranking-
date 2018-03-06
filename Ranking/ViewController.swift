//
//  ViewController.swift
//  Ranking
//
//  Created by jianwei on 2018/1/28.
//  Copyright © 2018年 jianwei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var myGifImageVeiw: UIImageView!
    @IBOutlet weak var CreatAccount: UIButton!
    @IBOutlet weak var registerAccount: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myGifImageVeiw.loadGif(name:"giphy");
        CreatAccount.layer.cornerRadius = 7.0
        registerAccount.layer.cornerRadius = 7.0
    }
        
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func CreatAccountTapped(_ sender: Any) {
      let mainNavigationController = storyboard?.instantiateViewController(withIdentifier: "MainNavigationController")as!MainNavigationController
        
        present(mainNavigationController,animated: true,completion: nil)
    }
    
    
    @IBAction func LoginAccountTapped(_ sender: Any) {
        
        let loginNavigationController=storyboard?.instantiateViewController(withIdentifier:"LoginNavigationController")as!LoginNavigationController
        
        present(loginNavigationController,animated: true,completion: nil)
    }
    
    
    
    
}

