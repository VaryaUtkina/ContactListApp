//
//  SectionedContactListViewController.swift
//  ContactListApp
//
//  Created by Варвара Уткина on 16.10.2024.
//

import UIKit

final class SectionedContactListViewController: UITableViewController {
    var contacts: [Contact]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

// MARK: - UITableViewDataSource
extension SectionedContactListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionedContactCell", for: indexPath)
        let contact = contacts[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = contact.phoneNumber
            content.image = UIImage(systemName: "phone")
        default:
            content.text = contact.email
            content.image = UIImage(systemName: "tray")
        }

        cell.selectionStyle = .none
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
