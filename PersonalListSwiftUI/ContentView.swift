//
//  ContentView.swift
//  PersonalListSwiftUI
//
//  Created by Evgenia Shipova on 29.10.2020.
//

import SwiftUI

struct ContentView: View {
    
    private let persons = Person.getPersonalList()
    
    var body: some View {
        TabView {
            
            PersonalList(persons: persons)
                .tabItem { Image(systemName: "person.circle")
                    Text("Contacts")
                }
            
            SectionPersonsList(persons: persons)
                .tabItem { Image(systemName: "person.circle")
                    Text("Contacts")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
