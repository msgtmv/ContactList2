//
//  DetailsViewController.swift
//  ContactList2
//
//  Created by Муслим Гаппаров on 14.02.2024.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var fullName: String!
    var phone: String!
    var email: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = fullName
        phoneLabel.text = phone
        emailLabel.text = email
    }
}
