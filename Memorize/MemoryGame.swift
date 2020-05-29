//
//  MemoryGame.swift
//  Memorize
//
//  Created by Guru Ranganathan on 5/29/20.
//  Copyright © 2020 Guru. All rights reserved.
//

import Foundation


struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    init(numberOfPairOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairOfCards {
            let content = cardContentFactory(pairIndex)
            
            cards.append(Card(content: content,id: pairIndex * 2))
            cards.append(Card(content: content,id: pairIndex * 2 + 1))
        }
    }
    
    func choose(card: Card) {
        print("card chosen \(card)")
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatch: Bool = false
        var content: CardContent
        var id: Int
    }
}
