//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Дмитрий on 07.06.2023.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var person: [Person] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Contact List"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? DetailsViewController
        detailsVC?.person = sender as? Person
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = person[indexPath.row]
        content.text = contact.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = person[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: person)
    }

}
