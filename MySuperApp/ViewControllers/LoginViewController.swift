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
    
    
    private let userName = ""
    private let userPassword = ""
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard  let loginVC = segue.destination as? WelcomeViewController else { return }
        loginVC.userName = userNameTF.text
    }
    
    //MARK: - IB Actions
    @IBAction func logInBTAction() {
        if userNameTF.text != userName || passwordTF.text != userPassword {
            showAlert(with: "Неверное имя или пароль", and:  "")
            return
        }
        
        performSegue(withIdentifier: "welcomeVC", sender: nil)
    }
    
    @IBAction func forgotPasswordBTAction() {
        showAlert(with: "Введите пароль:", and: "\(userPassword)")
    }
    
    @IBAction func forGotUserNameBTAction() {
        showAlert(with: "Введите имя:", and: "\(userName)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

    //MARK: - Extension
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInBTAction()
        }
        return true
    }
}
