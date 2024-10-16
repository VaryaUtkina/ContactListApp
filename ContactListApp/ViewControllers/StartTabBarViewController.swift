//
//  StartTabBarViewController.swift
//  ContactListApp
//
//  Created by Варвара Уткина on 16.10.2024.
//

import UIKit

final class StartTabBarViewController: UITabBarController {
    let contacts = Contact.getContacts()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        let contactListVC = navigationVC.topViewController as? ContactListViewController
        contactListVC?.contacts = contacts
        
        let sectionedContactListVC = navigationVC.topViewController as? SectionedContactListViewController
        sectionedContactListVC?.contacts = contacts
    }

}
