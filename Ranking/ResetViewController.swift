//
//  ResetViewController.swift
//  Ranking
//
//  Created by jianwei on 2018/2/26.
//  Copyright © 2018年 jianwei. All rights reserved.
//
import Foundation
import UIKit
import Firebase
import FirebaseAuth


class ResetViewController : UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
}

    @IBOutlet weak var emailTxtFld: UITextField!
    @IBAction func Reset(_ sender: Any) {
        
        if self.emailTxtFld.text == "" {
            let erroralert = UIAlertController(title:"錯誤",message:"請輸入email",preferredStyle: UIAlertControllerStyle.alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
           erroralert.addAction(defaultAction)
            //self.showMsg("請輸入email")
            present(erroralert, animated: true, completion: nil)
            return
        }
        
        Auth.auth().sendPasswordReset(withEmail: self.emailTxtFld.text!, completion: { (error) in
            // 重設失敗
            if error != nil {
                 let erroralert = UIAlertController(title:"錯誤",message:"查無此帳號(需填入完整email格式)",preferredStyle: UIAlertControllerStyle.alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                erroralert.addAction(defaultAction)
                 self.present(erroralert, animated: true, completion: nil)
                return
            }
            
             let erroralert = UIAlertController(title:"成功",message:"重設成功,請檢查電子郵件",preferredStyle: UIAlertControllerStyle.alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
           erroralert.addAction(defaultAction)
             self.present(erroralert, animated: true, completion: nil)
        })
    }
    
}
