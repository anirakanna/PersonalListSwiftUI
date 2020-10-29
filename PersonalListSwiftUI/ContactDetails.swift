//
//  ContactDetails.swift
//  PersonalListSwiftUI
//
//  Created by Evgenia Shipova on 29.10.2020.
//

import SwiftUI

struct ContactDetails: View {
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            ContactInfo(info: person.phone, infoType: "Phone")
            ContactInfo(info: person.email, infoType: "Email")
        }
        .padding()
        Spacer()
            .navigationTitle(person.fullName)
    }
}

struct ContactInfo: View {
    let info: String
    let infoType: String
    
    var body: some View {
        HStack {
            Text("\(infoType):  \(info)")
            Spacer()
        }
    }
}


struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(person: Person(id: 1, name: "Tim", surname: "Cook", phone: "222", email: "sdf@sdf"))
    }
}
