//
//  ContactDetailsViewController.swift
//  ContactListApp
//
//  Created by Варвара Уткина on 16.10.2024.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = contact.fullName
        phoneLabel.text = "Phone: \(contact.phoneNumber)"
        emailLabel.text = "Email: \(contact.email)"
    }

}
