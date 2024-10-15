//
//  ViewController.swift
//  ContactListApp
//
//  Created by Варвара Уткина on 15.10.2024.
//

import UIKit

final class ContactListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

// MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
