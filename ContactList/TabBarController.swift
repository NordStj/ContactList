//
//  TabBarController.swift
//  ContactList
//
//  Created by Дмитрий on 07.06.2023.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    private func setup() {
        guard let firstContactVC = viewControllers?.first as? ContactListViewController else { return }
        guard let secondContactVC = viewControllers?.last as? SecondContactListController else { return }
        
        let persons = Person.getContacts()
        firstContactVC.person = persons
        secondContactVC.person = persons
    }
}
