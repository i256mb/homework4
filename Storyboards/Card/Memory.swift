
import Foundation

class Memory {
    
    var cards = [Card]()
    
    var indexOfFaceUpCard: Int?
    
    func chooseCard(at index: Int) {
        if cards[index].isMatched {
            return
        }
        
        if let matchIndex = indexOfFaceUpCard, matchIndex != index {
            if cards[matchIndex].id == cards[index].id {
                cards[matchIndex].isMatched = true
                cards[index].isMatched = true
            }
            cards[index].isFaceUp = true
            indexOfFaceUpCard = nil
        } else {
            for cardIndex in cards.indices {
                cards[cardIndex].isFaceUp = false
            }
            cards[index].isFaceUp = true
            indexOfFaceUpCard = index
        }
    }
    
    func checkWin() -> Bool{
        var existFaceUp = true
        for cardIndex in cards.indices{
            if cards[cardIndex].isMatched == false{
                existFaceUp = false
                break
            }
        }
        return existFaceUp
    }
    
    init(numberOfPairsOfCrads: Int) {
        for _ in 1...numberOfPairsOfCrads {
            let card = Card()
            cards += [card, card]
        }
        cards.shuffle()
    }
 
}
