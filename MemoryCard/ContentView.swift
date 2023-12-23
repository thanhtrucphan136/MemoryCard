//
//  ContentView.swift
//  MemoryCard
//
//  Created by Truc Phan on 12/23/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
        }
        .padding()
        .foregroundColor(.pink)
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.white)
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(lineWidth: 5)
                Text("🥹").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.pink)
            }
            
        }
    }
}

#Preview {
    ContentView()
}
