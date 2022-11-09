//
//  ViewController.swift
//  AuthorizationApp
//
//  Created by Irunchik on 8.11.22.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var firstNameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameLabel.text = person.firstName
        lastNameLabel.text = person.lastName
        countryLabel.text = person.country
        cityLabel.text = person.city
        ageLabel.text = person.age
        
    }

}
