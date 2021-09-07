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
                
                HStack(alignment:.top, spacing: 15) {
                    Image("unknown")
                        .resizable()
                        .scaledToFit()
                                            .frame(minWidth: 40, idealWidth: 50, maxWidth: 70, minHeight: 40, idealHeight: 50, maxHeight: 70, alignment: .center)
                        
                    VStack(alignment:.leading){
                        Text("\(item.firstname) \(item.lastname)")
                        Text("\(item.email)")
                        Text("\(item.address)")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
