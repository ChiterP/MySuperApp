//
//  WelcomeViewController.swift
//  MySuperApp
//
//  Created by 18316409 on 30.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var wUserNameTF: UILabel!
    @IBOutlet weak var fioUserTF: UILabel!
    @IBOutlet weak var welcomImageTF: UILabel!

    var userName: String!
    let welcomTextStatic = "Welcome!!!"

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomImageTF.text = "👍🏻"
        wUserNameTF.text = welcomTextStatic
        fioUserTF.text = userName
    }
    
    @IBAction func logOutBTAction() {
    }
}
