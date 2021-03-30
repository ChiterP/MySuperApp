//
//  WelcomeViewController.swift
//  MySuperApp
//
//  Created by 18316409 on 30.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet weak var userNameTF: UILabel!
    
    @IBOutlet weak var logOutButtom: UIButton!
    
    var userName: String!
    let userNamestatic = "Welcome, "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = userNamestatic + userName
    }
    
    @IBAction func logOutBTAction() {
    }
}
