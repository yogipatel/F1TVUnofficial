//
//  LoginViewController.swift
//  F1TVUnofficial
//
//  Created by Markus Ort on 17.09.19.
//  Copyright © 2019 Markus Ort. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, loginDelegate {
    func onLoginSuccess() {
        self.dismiss(animated: true)
    }
    

    @IBOutlet weak var MailField: UITextField!
    @IBOutlet weak var PassField: UITextField!
    @IBOutlet weak var StatusLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoginManager.shared.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func onLoginError(_ message: String){
        DispatchQueue.main.sync{
            self.StatusLabel.text = message
        }
        
    }
    
    @IBAction func OnClicked(_ sender: Any) {
        // Now Lets log us in!
        
        LoginManager.shared.loginWithCreds(user: self.MailField.text!, pass: self.PassField.text!)
        
        
        
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}