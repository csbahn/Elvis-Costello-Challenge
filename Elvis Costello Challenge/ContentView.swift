//
//  ContentView.swift
//  Elvis Costello Challenge
//
//  Created by Chris Bahn on 3/21/25.
//

import SwiftUI

struct ContentView: View {
    @State var symbolName = ""
    @State var message = ""
    var body: some View {
        VStack {
            
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .foregroundStyle(.purple)
                .fontWeight(.black)
            
            Spacer()
            
            Image(systemName: "\(symbolName)")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Text("\(message)")
                .font(.largeTitle)
                .foregroundStyle(.purple)
                .fontWeight(.heavy)
            
            Spacer()
            
            HStack {
                Button("Peace"){
                    symbolName = "peacesign"
                    message = "Peace"
                }
                
                Button("Love"){
                    symbolName = "heart"
                    message = "Love"
                }
                
                Button("Understanding"){
                    symbolName = "lightbulb"
                    message = "Understanding"
                }
            }.buttonStyle(.borderedProminent)
                .tint(.purple)
            .padding()
        }
    }
}
    #Preview {
        ContentView()
    }
