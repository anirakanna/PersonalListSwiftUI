//
//  SectionPersonsList.swift
//  PersonalListSwiftUI
//
//  Created by Evgenia Shipova on 29.10.2020.
//

import SwiftUI

struct SectionPersonsList: View {
    
   let persons: [Person]
    
    var body: some View {
        NavigationView {
            List() {
                ForEach(persons) { person in
                    Section(header:
                                Text( "\(person.fullName)")
                    ) {
                        VStack(alignment: .leading) {
                            PersonRowSection(
                                imageName: "phone",
                                info: person.phone)
                            PersonRowSection(
                                imageName: "tray",
                                info: person.email)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Persons List"))
        }
    }
}

struct SectionPersonsList_Previews: PreviewProvider {
    static var previews: some View {
        SectionPersonsList(persons: [Person(id: 1, name: "sdf", surname: "sdfsd", phone: "1231231", email: "aaasd@sdf")])
    }
}
