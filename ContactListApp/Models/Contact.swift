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
        let names = dataSource.names.shuffled()
        let surnames = dataSource.surnames.shuffled()
        let phones = dataSource.phoneNumbers.shuffled()
        let emails = dataSource.emails.shuffled()
        
        let minCount = min(
            dataSource.names.count,
            dataSource.surnames.count,
            dataSource.phoneNumbers.count,
            dataSource.emails.count
        )
        
        let contacts = (0...minCount - 1).map { iteration in
            Contact(
                name: names[iteration],
                surname: surnames[iteration],
                phoneNumber: phones[iteration],
                email: emails[iteration]
            )
        }
        return contacts
    }
}
