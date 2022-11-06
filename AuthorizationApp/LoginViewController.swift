//
//  ViewController.swift
//  AuthorizationApp
//
//  Created by Irunchik on 4.11.22.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - IB Outlets
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let wellcomeVC = segue.destination as? WelcomeViewController else {return}
            wellcomeVC.userNameValue = userNameTF.text
    }
    
    // MARK: - IB Actions
    
    @IBAction func logInButtonTapped() {
        guard let userName = userNameTF.text, let password = passwordTF.text else {return}
        if userName == "Ira" && password == "1111" {
            performSegue(withIdentifier: "goToWelcomeView", sender: nil)
        } else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and passsword")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else {return}
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotUserNameTapped() {
        showAlert(title: "Oops!", message: "Your name is Ira😄")
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(title: "Oops!", message: "Your password is 1111😉")
    }
    // MARK: - Private Methods
    
    private func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
}

