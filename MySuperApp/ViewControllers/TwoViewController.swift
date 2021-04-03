//
//  TwoViewController.swift
//  MySuperApp
//
//  Created by Алексей Сергейцев on 4/2/21.
//

import UIKit

class TwoViewController: UIViewController {

    @IBOutlet weak var twoTF: UILabel!
    @IBOutlet weak var userNameTF: UILabel!
    
    private let person = Person.getPersons()

    var userName: String!
    var extUserName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = extUserName
        twoTF.text = person.discription
        tabBarItem.title = person.name
    }
    

}
