//
//  PersonRowSection.swift
//  PersonalListSwiftUI
//
//  Created by Evgenia Shipova on 29.10.2020.
//

import SwiftUI

struct PersonRowSection: View {
    let imageName: String
    let info: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .frame(width: 20, height: 20, alignment: .center)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Text(info)
                .padding()
        }
        
    }
}

struct PersonRowSection_Previews: PreviewProvider {
    static var previews: some View {
        PersonRowSection(imageName: "phone", info: "888888")
    }
}
