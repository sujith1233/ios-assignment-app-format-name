//
//  ViewController.swift
//  Naidu_FormatName
//
//  Created by Naidu,Sujith Reddy on 2/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        var name1 = firstNameTextField.text!
        var name2 = lastNameTextField.text!
        let x1 = name1.prefix(1)
        let x2 = name2.prefix(1)
        fullNameLabel.text="Full Name: \(name1),\(name2)"
        initialsLabel.text = "Initials: \(x1)\(x2)"
    }
    
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        firstNameTextField.text = " "
        lastNameTextField.text = " "
        fullNameLabel.text = " "
        initialsLabel.text = " "
        firstNameTextField.becomeFirstResponder()
        }
    

}

