//
//  ViewController.swift
//  ContactListApp
//
//  Created by Варвара Уткина on 15.10.2024.
//

import UIKit

final class ContactListViewController: UITableViewController {
    let contacts = Contact.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

// MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = contacts[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}
