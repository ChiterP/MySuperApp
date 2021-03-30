//
//  LoginViewController.swift
//  MySuperApp
//
//  Created by 18316409 on 30.03.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    private let userName = "User"
    private let userPassword = "Passw"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Override methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard  let loginVC = segue.destination as? WelcomeViewController else { return }
        loginVC.userName = userNameTF.text
    }
    
    //MARK: - IB Actions
    @IBAction func logInBTAction() {
        if userNameTF.text != "" {
            if userNameTF.text == userName {
            } else {
                showAlert(with: "Неверное имя!", and:  "")
            }
        } else {
            showAlert(with: "Введите имя!", and:  "")
        }
        
        if passwordTF.text != "" {
            if passwordTF.text == userPassword {
            } else {
                showAlert(with: "Неверный пароль!", and:  "")
            }
        } else {
            showAlert(with: "Введите пароль!", and:  "")
        }
    }
    
    @IBAction func forgotPasswordBTAction() {
        showAlert(with: "Введите пароль:", and:  "\(userPassword)")
    }
    
    @IBAction func forGotUserNameBTAction() {
        showAlert(with: "Введите имя:", and:  "\(userName)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}


extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


