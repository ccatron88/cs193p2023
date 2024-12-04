//
//  ContentView.swift
//  Memory
//
//  Created by Christopher Catron on 11/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 12)
            Text("Memory")
                .font(.title)
                .foregroundStyle(.black)
        }
        .foregroundStyle(.cyan)
        .frame(width: 400, height: 80)
        .padding(.vertical, 0)
        
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.purple)
        .padding(.horizontal, 2.0)
        .padding(.vertical, 0)
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        if isFaceUp {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                    .frame(width:50, height: 50)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                    .frame(width:50, height: 50)
                Text("👻")
            }
        } else {
            RoundedRectangle(cornerRadius: 12)
                .frame(width:50, height: 50)
        }
    }
}

#Preview {
    ContentView()
}
