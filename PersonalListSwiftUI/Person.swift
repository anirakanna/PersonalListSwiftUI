//
//  Person.swift
//  PersonalListSwiftUI
//
//  Created by Evgenia Shipova on 29.10.2020.
//

import Foundation

struct Person: Identifiable {
    let id: Int
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonalList() -> [Person] {
        var persons = [Person]()
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let countsElements = [
            names.count,
            surnames.count,
            phones.count,
            emails.count
        ]
        
        if let minValue = countsElements.min() {
            for index in 0..<minValue {
                persons.append(Person(
                                id: index,
                                name: names[index],
                                surname: surnames[index],
                                phone: phones[index],
                                email: emails[index])
                )
            }
        }
        return persons
    }
}
