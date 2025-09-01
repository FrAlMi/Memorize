//
//  ContentView.swift
//  Memorize
//
//  Created by Алина Фролкина on 01.09.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(Color.yellow)
        .imageScale(.small)
        .foregroundStyle(.tint)
        .padding()
    }
}

#Preview {
    ContentView()
}

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack (content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("🃏")
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.yellow)
            }
        })
    }
}
