//
//  WellcomeViewController.swift
//  AuthorizationApp
//
//  Created by Irunchik on 4.11.22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var wellcomeLabel: UILabel!
    
    var userNameValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wellcomeLabel.text = "Wellcome, " + userNameValue + "!"
        
    }
    
    @IBAction func logOutButtonTapped() {
        dismiss(animated: true)
    }
    
   
}
