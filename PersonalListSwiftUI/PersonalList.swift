//
//  PersonalList.swift
//  PersonalListSwiftUI
//
//  Created by Evgenia Shipova on 29.10.2020.
//

import SwiftUI

struct PersonalList: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(
                    person.fullName,
                    destination: ContactDetails(
                        person: person
                    )
                )      
            }
            .navigationBarTitle(Text("Persons List"))
        }
    }
}

struct PersonalList_Previews: PreviewProvider {
    static var previews: some View {
        PersonalList(persons: [])
    }
}
