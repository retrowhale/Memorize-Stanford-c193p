//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Deniz Donmezer on 2022-07-14.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    static var emojis = ["✈️", "🚅", "🚂", "🚁", "🚔", "🚞", "🚤", "🚢", "🛸"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 9) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    
    // MARK: - Intent(s)
        func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
}


