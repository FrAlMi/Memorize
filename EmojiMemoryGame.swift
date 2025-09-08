//
//  EmojeMemoryGame.swift
//  Memorize
//
//  Created by Алина Фролкина on 07.09.2025.
//

import SwiftUI

class EmojeMemoryGame {
    private static let emojis = ["♥️", "♠️", "♦️", "♣️","♡", "♤", "♢", "♧","♥︎", "♠︎", "♦︎", "♣︎"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 4) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            } else {
                return "⁉️"
            }
        }
    }
    
    private var model = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
