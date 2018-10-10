//
//  Concentration.swift
//  Concentration
//
//  Created by Alexeeva Ekaterina on 10/10/18.
//  Copyright © 2018 Alexeeva Ekaterina. All rights reserved.
//

import Foundation

class Concentration {
    
    var cards = [Card]()
    
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    func chooseCard(at index: Int) {
        
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                //check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = nil
            } else {
                //either no cards or two cards are face up
                for flipDownIndex in cards.indices  {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
        
//        if cards[index].isFaceUp {
//            cards[index].isFaceUp = false
//        } else {
//            cards[index].isFaceUp = true
//        }
        
    }
    
    init(numberofPairsOfCards: Int) {
        for _ in 1...numberofPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        
        //TODO: Shuffle the Cards
        
        
        
    }
    
    
}
