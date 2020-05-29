//
//  ContentView.swift
//  Memorize
//
//  Created by Guru Ranganathan on 5/28/20.
//  Copyright © 2020 Guru. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    var body: some View {
        
        HStack {
            ForEach (viewModel.cards){ card in
                CardView(card: card)
            }
        }
            
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
    
    
    struct CardView: View {
        var card: MemoryGame<String>.Card
        var body: some View {
            ZStack{
                if card.isFaceUp {
                    RoundedRectangle(cornerRadius: 10).fill(Color.white)
                    
                    RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                    Text(card.content)
                }else {
                    RoundedRectangle(cornerRadius: 10).fill()
                }
            }
        }
    }
}






























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
