//
//  ViewController.swift
//  LoginApp
//
//  Created by Noor-us-saba Karim on 5/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
  
    
    @IBOutlet var forgotUsernameButton: UIButton!
    
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//
//        switch segue.identifier {
//        case "forgotUsernameOrPassword":
//            segue.destination.navigationItem.title = "Forgot Username/Password"
//        case "showLanding":
//            segue.destination.navigationItem.title = userNameTextField.text
//        default:
//            segue.destination.navigationItem.title = "Landing"
//
//        }
//
        
        guard let sender = sender as? UIButton else{return}
        
        switch sender {
        case forgotUsernameButton:
            segue.destination.navigationItem.title = "Forgot Username"
        case forgotPasswordButton:
            segue.destination.navigationItem.title = "Forgot Password"
        default:
            segue.destination.navigationItem.title = userNameTextField.text
        }
        
    }
    
    @IBAction func forgotPasswordButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: sender)
    }
    
    @IBAction func forgotUsernameButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: sender)
    }
    
}

