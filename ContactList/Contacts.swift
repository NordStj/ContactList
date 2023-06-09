//
//  Contacts.swift
//  ContactList
//
//  Created by Дмитрий on 07.06.2023.
//

struct Person {
    let name: String
    let lastName: String
    let phone: String
    let email: String
    var fullName: String {
        "\(name) \(lastName)"
    }
    
    static func getContacts() -> [Person] {
        let contacts = DataStore()
        var persons: [Person] = []
        
        let names = contacts.names.shuffled()
        let lastName = contacts.lastNames.shuffled()
        let phone = contacts.phone.shuffled()
        let email = contacts.email.shuffled()
        
        for (index, name) in names.enumerated() {
            let lastName = lastName[index]
            let phone = phone[index]
            let emael = email[index]
            
            let person = Person(name: name, lastName: lastName, phone: phone, email: emael)
            persons.append(person)
        }
        
        
        return persons
        }
        
    }
