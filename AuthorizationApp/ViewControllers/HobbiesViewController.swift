//
//  ViewController.swift
//  AuthorizationApp
//
//  Created by Irunchik on 8.11.22.
//

import UIKit

class HobbiesViewController: UIViewController {
    
    @IBOutlet var hobbiesLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        hobbiesLabel.text = person.hobbies
    }

}
