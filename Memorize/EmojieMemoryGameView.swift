//
//  EmojieMemoryGameView.swift
//  Memorize
//
//  Created by Алина Фролкина on 01.09.2025.
//

import SwiftUI

struct EmojieMemoryGameView: View {
    var viewModel: EmojiMemoryGame
    let emojis: [String] = ["♥️", "♠️", "♦️", "♣️","♡", "♤", "♢", "♧","♥︎", "♠︎", "♦︎", "♣︎"]
    
    var body: some View {
        ScrollView{
            cards
        }
        .padding()
    }
    
    var cards: some View{
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundColor(Color.black)
    }
}

struct CardView: View {
    let content: String
    @ State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(Font.largeTitle)
            }
                .opacity(isFaceUp ? 1 : 0)
            base.fill()
                .opacity(isFaceUp ? 0 : 1)
        }
            .onTapGesture{
            isFaceUp.toggle()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
