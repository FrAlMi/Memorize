//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Алина Фролкина on 07.09.2025.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
    }
        struct Card {
            var isFaceUp: Bool
            var isMatched: Bool
            var content: CardContent
        }
}
