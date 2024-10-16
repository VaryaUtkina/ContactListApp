//
//  StartTabBarViewController.swift
//  ContactListApp
//
//  Created by Варвара Уткина on 16.10.2024.
//

import UIKit

final class StartTabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let contacts = Contact.getContacts()
        
        
        viewControllers?.forEach { viewController in
            guard let navigationVC = viewController as? UINavigationController  else { return }
            if let contactListVC = navigationVC.topViewController as? ContactListViewController {
                contactListVC.contacts = contacts
            } else if let sectionedContactListVC = navigationVC.topViewController as? SectionedContactListViewController {
                sectionedContactListVC.contacts = contacts
            }
        }
    }
}
