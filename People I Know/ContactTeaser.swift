//
//  ContactTeaser.swift
//  People I Know
//
//  Created by Lars Richter on 11.10.21.
//

import SwiftUI

struct ContactTeaser: View {
    let contact: Contact
    var body: some View {
        HStack(alignment:.top, spacing: 5.0) {
            contact.thumbnail
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
                .background(contact.gradient)
                .cornerRadius(15)
            
            VStack(alignment:.leading){
                Text("\(contact.firstname ?? "") \(contact.lastname ?? "")")
                    .fontWeight(.bold)
                    .foregroundColor(Color.accentColor)
                Text("\(contact.email ?? "")")
                    .font(.caption)
                Text("\(contact.address ?? "")")
                    .font(.caption)
            }
            Spacer()
        }
        .padding(.leading, 5)
    }
}

struct ContactTeaser_Previews: PreviewProvider {
    static var previews: some View {
        ContactTeaser(contact: contacts.first!)
    }
}
