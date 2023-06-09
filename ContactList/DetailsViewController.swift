//
//  DetailsViewController.swift
//  ContactList
//
//  Created by Дмитрий on 07.06.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    var person: Person!
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
        navigationItem.title = person.fullName
    }

}
