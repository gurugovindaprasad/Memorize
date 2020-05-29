//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Guru Ranganathan on 5/29/20.
//  Copyright © 2020 Guru. All rights reserved.
//

import SwiftUI


class EmojiMemoryGame {
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
    static func createMemoryGame() -> MemoryGame<String> {
        
        let emojis: Array<String> = ["👻","🎃"]
       return MemoryGame<String>(numberOfPairOfCards: 2) { pairIndex in
            return emojis[pairIndex]
        }
    
    }
    //MARK: - Access to model
    
    var cards : Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func chooseCard(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
