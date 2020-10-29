//
//  DataManager.swift
//  PersonalListSwiftUI
//
//  Created by Evgenia Shipova on 29.10.2020.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    private init() {}
    
    let names = [
        "Mac",
        "Zachary",
        "Tim",
        "Emily",
        "Karen",
        "Steve",
        "Clark",
        "Greta",
        "Evelyn",
        "Scott"
    ]
    let surnames = [
        "Smith",
        "Scott",
        "Jones",
        "Watson",
        "Dern",
        "Cooper",
        "Robinson",
        "Curtis",
        "Young",
        "Davis"
    ]
    let phones = [
        "8920347388",
        "8920002341",
        "8920567871",
        "8920284570",
        "8920025435",
        "8920253464",
        "8923733839",
        "8923234234",
        "8922342349",
        "8920937489"
    ]
    let emails = [
        "aa@gmail.com",
        "ggg@gmail.com",
        "sf3@gmail.com",
        "dfg32@gmail.com",
        "hhh@gmail.com",
        "kkk@gmail.com",
        "aee@gmail.com",
        "refg4@gmail.com",
        "rdg3@gmail.com",
        "drg@gmail.com"
    ]
}
