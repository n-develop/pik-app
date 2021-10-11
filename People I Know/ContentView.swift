//
//  ContentView.swift
//  People I Know
//
//  Created by Lars Richter on 07.09.21.
//

import SwiftUI

struct ContentView: View {
    @State var myContacts = contacts
    
    var body: some View {
        NavigationView{
            VStack{
                List(0..<myContacts.count){ index in
                    NavigationLink(destination:ContactView(contact: $myContacts[index])){
                        ContactTeaser(contact: $myContacts[index])
                    }
                }
            }
            .navigationTitle("People I Know")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContactTeaser: View {
    @Binding var contact: Contact
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
