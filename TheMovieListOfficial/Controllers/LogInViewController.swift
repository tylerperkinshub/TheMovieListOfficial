//
//  LogInViewController.swift
//  TheMovieListOfficial
//
//  Created by Tyler Perkins on 9/22/17.
//  Copyright © 2017 Tyler Perkins. All rights reserved.
//

import UIKit
import Parse

class LogInViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var activityIndicator = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signInButtonPressed(_ sender: Any) {
        
        if userNameTextField.text == "" || passwordTextField.text == "" {
            createAlert(title: "Error!", message: "Please enter username and password.")
        } else {
            activityIndicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
            activityIndicator.center = self.view.center
            activityIndicator.hidesWhenStopped = true
            activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
            view.addSubview(activityIndicator)
            activityIndicator.startAnimating()
            UIApplication.shared.beginIgnoringInteractionEvents()
            
            PFUser.logInWithUsername(inBackground: userNameTextField.text!, password: passwordTextField.text!, block: { (user, error) in
                self.activityIndicator.stopAnimating()
                UIApplication.shared.endIgnoringInteractionEvents()
                
                if error != nil {
                    var displayErrorMessage = "Please try again later."
                    let error = error as NSError?
                    if let errorMessage = error?.userInfo["error"] as? String {
                        displayErrorMessage = errorMessage
                    }
                    
                    self.createAlert(title: "Login Error", message: displayErrorMessage)
    
                } else {
                    print("Logged in")
                    self.performSegue(withIdentifier: "LoginCompleteSegue", sender: self)
                    
                }
            })
        }
    }
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "SignUpSegue", sender: self)
    }
    
    func createAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
}
