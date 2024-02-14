//
//  AnotherContactListViewController.swift
//  ContactList2
//
//  Created by Муслим Гаппаров on 14.02.2024.
//

import UIKit

class AnotherContactListViewController: UITableViewController {
    var persons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "anotherContact", for: indexPath)

        var content = cell.defaultContentConfiguration()
        switch indexPath.row {
        case 0:
            content.text = persons[indexPath.section].number
            content.image = UIImage(systemName: "phone")
        default:
            content.text = persons[indexPath.section].email
            content.image = UIImage(systemName: "tray")
        }
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
}
