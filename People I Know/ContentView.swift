//
//  ContentView.swift
//  People I Know
//
//  Created by Lars Richter on 07.09.21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            Text("People I Know")
                .font(.title)
            List(contacts, id:\.email) { item in
                
                HStack(alignment:.top, spacing: 5.0) {
                    Image("unknown")
                        .resizable()
                        .scaledToFit()
                                            .frame(minWidth: 40, idealWidth: 50, maxWidth: 70, minHeight: 40, idealHeight: 50, maxHeight: 70, alignment: .center)
                        .cornerRadius(50)
                        
                    VStack(alignment:.leading){
                        Text("\(item.firstname) \(item.lastname)")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("\(item.email)")
                            .font(.caption)
                        Text("\(item.address)")
                            .font(.caption)
                    }
                    Spacer()
                }
                .cornerRadius(15)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
