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
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
