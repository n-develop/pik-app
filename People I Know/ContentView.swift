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


