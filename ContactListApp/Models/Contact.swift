//
//  Contact.swift
//  ContactListApp
//
//  Created by Варвара Уткина on 15.10.2024.
//

struct Contact {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    static func getContacts() -> [Contact] {
        let dataSource = DataSource()
        return []
    }
}
