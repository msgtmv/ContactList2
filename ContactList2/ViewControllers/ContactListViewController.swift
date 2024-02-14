//
//  ContactListViewController.swift
//  ContactList2
//
//  Created by Муслим Гаппаров on 14.02.2024.
//

import UIKit

class ContactListViewController: UITableViewController {
    var persons: [Person]!

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = persons[indexPath.row].fullName
        cell.contentConfiguration = content

        return cell
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        let indexPath = tableView.indexPathForSelectedRow
        detailsVC.phone = persons[indexPath?.row ?? 0].number
        detailsVC.email = persons[indexPath?.row ?? 0].email
        detailsVC.fullName = persons[indexPath?.row ?? 0].fullName
    }
    

}
