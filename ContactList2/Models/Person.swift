//
//  Person.swift
//  ContactList2
//
//  Created by Муслим Гаппаров on 14.02.2024.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let number: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let numbers = DataManager.shared.numbers.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        for integer in 0...(names.count - 1) {
            persons.append(
                Person(
                    name: names[integer],
                    surname: surnames[integer],
                    number: numbers[integer],
                    email: emails[integer]
                )
            )
        }
        
        return persons
    }
}
