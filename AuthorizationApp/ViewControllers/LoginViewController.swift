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
    
   
   private let userNameValue = "1"
   private let passwordValue = "1"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else {return}
        guard let viewControllers  = tabBarVC.viewControllers else {return}
        
        for viewController in viewControllers {
            if let wellcomeVC = viewController as? WelcomeViewController {
                wellcomeVC.user = userNameTF.text
            } else if let infoVC = viewController as? InfoViewController {
                infoVC.view.backgroundColor = .systemMint
            } else if let hobbiesVC = viewController as? HobbiesViewController {
                hobbiesVC.view.backgroundColor = .systemCyan
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    
    @IBAction func logInButtonTapped() {
        guard userNameTF.text == userNameValue, passwordTF.text == passwordValue else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and passsword")
            passwordTF.text = ""
            return
        }
        performSegue(withIdentifier: "goToWelcomeView", sender: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotAction(_ sender: UIButton) {
        sender.tag == 1
        ? showAlert(title: "Oops!", message: "Your name is Ira😄")
        : showAlert(title: "Oops!", message: "Your password is 1111😉")
    }
}
    // MARK: - Extension
extension LoginViewController {
    private func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
}

