//
//  ViewController.swift
//  Rock Schedule Finder
//
//  Created by Tanner Helton on 11/8/16.
//  Copyright © 2016 Tanner Helton. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSubmitPassword(_ sender: UIButton) {
        if (txtPassword.text == "Tanner"){
            performSegue(withIdentifier: "LoginSubmission", sender: nil)
        } else {
            let alertController = UIAlertController(title: "Wrong Password", message: "You have entered the wrong password", preferredStyle: UIAlertControllerStyle.alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default)
            {
                (result : UIAlertAction) -> Void in
                print("You pressed OK")
            }
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }

}

