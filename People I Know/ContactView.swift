//
//  ContactView.swift
//  People I Know
//
//  Created by Lars Richter on 11.10.21.
//

import SwiftUI

struct ContactView: View {
    @Binding var contact: Contact
    
    var body: some View {
        Form{
            Section(header: Text("NAME")) {
                TextField("First name", text: $contact.firstname ?? "")
                TextField("Last name", text: $contact.lastname ?? "")
            }
            Section(header: Text("CONTACT")) {
                TextField("Email", text: $contact.email ?? "")
                TextField("Address", text: $contact.address ?? "")
            }
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(contact: .constant(contacts.first!))
    }
}

func ??<T>(lhs: Binding<Optional<T>>, rhs: T) -> Binding<T> {
    Binding(
        get: { lhs.wrappedValue ?? rhs },
        set: { lhs.wrappedValue = $0 }
    )
}
