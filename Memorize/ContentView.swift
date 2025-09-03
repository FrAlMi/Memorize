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
            CardView(isFaceUp: false)
            CardView()
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
        }
        .foregroundColor(Color.yellow)
        .padding()
    }
}

#Preview {
    ContentView()
}

struct CardView: View {
    @ State var isFaceUp = false
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("🃏").font(.largeTitle)
            } else {
                    base.fill(.yellow)
            }
        } 
        .onTapGesture{
            isFaceUp.toggle()
        }
    }
}
