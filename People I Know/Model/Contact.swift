//
//  Contact.swift
//  People I Know
//
//  Created by Lars Richter on 07.09.21.
//

import Foundation

let contacts: [Contact] = [
    Contact(firstname: "Lars", lastname: "Richter", email: "lars@my-awesome-url.whoop", address: "Somestreet 123"),
    Contact(firstname: "John", lastname: "Smith", email: "john@workaround-ltd.com", address: "Boulevard 123"),
    Contact(firstname: "Jane", lastname: "Smith", email: "jane@workaround-ltd.com", address: "Boulevard 123")
]

struct Contact {
    var firstname: String?
    var lastname: String?
    var email: String?
    var address: String?
    var employer: String?
    var businessTitle: String?
    var tags: String?
}
