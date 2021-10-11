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
            Image("unknown")
                .resizable()
                .scaledToFit()
                .frame(minWidth: 40, idealWidth: 50, maxWidth: 70, minHeight: 40, idealHeight: 50, maxHeight: 70, alignment: .center)
                .cornerRadius(50)
            
            VStack(alignment:.leading){
                Text("\(contact.firstname) \(contact.lastname)")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.accentColor)
                Text("\(contact.email)")
                    .font(.caption)
                Text("\(contact.address)")
                    .font(.caption)
            }
            Spacer()
        }
        .cornerRadius(15)
    }
}

struct ContactTeaser_Previews: PreviewProvider {
    static var previews: some View {
        ContactTeaser(contact: contacts.first!)
    }
}
