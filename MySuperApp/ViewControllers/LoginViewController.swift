//
//  LoginViewController.swift
//  MySuperApp
//
//  Created by 18316409 on 30.03.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginUserNameTF: UITextField!
    @IBOutlet weak var loginPasswordTF: UITextField!
    
    private let person = Person.getPersons()
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let viewControllers = tabBarController.viewControllers!

        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = person.name + " " + person.sername
            } else if let twoVC = viewController as? TwoViewController {
                twoVC.userName = loginUserNameTF.text
                twoVC.extUserName = person.name + " " + person.sername
            }
        }
    }
    
    //MARK: - IB Actions
    @IBAction func logInBTAction() {
        if loginUserNameTF.text != person.login || loginPasswordTF.text != person.password {
            showAlert(with: "Неверное имя или пароль", and:  "")
            loginPasswordTF.text = ""
            return
        }
        
        performSegue(withIdentifier: "welcomeVC", sender: nil)
    }
    
    @IBAction func forgotPasswordBTAction() {
        showAlert(with: "Введите пароль:", and: "\(person.password)")
    }
    
    @IBAction func forGotUserNameBTAction() {
        showAlert(with: "Введите имя:", and: "\(person.login)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginUserNameTF.text = ""
        loginPasswordTF.text = ""
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
        if textField == loginUserNameTF {
            loginPasswordTF.becomeFirstResponder()
        } else {
            logInBTAction()
        }
        return true
    }
}
