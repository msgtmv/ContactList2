//
//  TabBarController.swift
//  ContactList2
//
//  Created by Муслим Гаппаров on 14.02.2024.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
    sendData()
    }
    
    private func sendData() {
        let persons = Person.getPersonList()
        
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let anotherContactListVC = viewControllers?.last as? AnotherContactListViewController else { return }
        
        contactListVC.persons = persons
        anotherContactListVC.persons = persons
    }
}
