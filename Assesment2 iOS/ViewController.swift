//
//  ViewController.swift
//  Assesment2 iOS
//
//  Created by Sawyer Cherry on 10/17/18.
//  Copyright © 2018 Sawyer Cherry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNameTextLabel: UILabel!
    @IBOutlet weak var lastNameTextLabel: UILabel!
    @IBOutlet weak var emailTextLabel: UILabel!
    
    @IBOutlet weak var submitButton: UIButton!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func submitButtonTapped(_ sender: Any) {
        if emailTextField.text == "" {
            fatalError()
        }
        if lastNameTextField.text == ""{
            fatalError()
        }
        if firstNameTextField.text == "" {
            fatalError()
        }
        //put thwe swifty stuff here ipsum stuff whatever rlly
        let newPerson = Person(firstName: firstNameTextField.text!, lastName: lastNameTextField.text!, email: emailTextField.text!)
        
        let submitAlert = UIAlertController(title: "Person Added", message: "\(newPerson.firstName) \(newPerson.lastName) with the email of \(newPerson.email) was added to the database.", preferredStyle: .alert)
        
        let closeAction = UIAlertAction(title: "Close", style: .default)
        
        submitAlert.addAction(closeAction)
        
        self.present(submitAlert, animated: true, completion: nil)
      clearTextFields()
    }
    func clearTextFields() {
        emailTextField.text = ""
        lastNameTextField.text = ""
        firstNameTextField.text = ""
    }
    
}

