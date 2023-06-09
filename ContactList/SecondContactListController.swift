//
//  SecondContactListController.swift
//  ContactList
//
//  Created by Дмитрий on 07.06.2023.
//

import UIKit

class SecondContactListController: UITableViewController {

    var person: [Person] = []
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        person.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = person[indexPath.row]
        content.text = contact.fullName
        cell.contentConfiguration = content
        return cell
    }

}
