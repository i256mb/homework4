
import UIKit

class CardStoryboard: UIViewController {
    
    /*  lazy var game = Memory(numberOfPairsOfCrads: (cardButtons.count + 1) / 2)
    
    var gameTimer: Timer!
    
    @IBOutlet var cardButtons: [UIButton]!
    var emojiList = ["🦊", "🐻", "🐼", "🐨", "🦁", "🐯", "🐵", "🦉", "🦇"]
    var emoji = [Int:String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cardButtonAction(_ sender: UIButton) {
        if let cardIndex = cardButtons.firstIndex(of: sender) {
            game.chooseCard(at: cardIndex)
            updateButtons()
        } else {
            print("This button is not in card buttons!")
        }
    }
    
    func updateButtons() {
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: .normal)
                button.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            } else {
                button.setTitle("", for: .normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0) : #colorLiteral(red: 0.2723996043, green: 0.6819463372, blue: 0.632582128, alpha: 1)
            }
        }
        gameTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(hide_right_answer), userInfo: nil, repeats: false)
    }
    

    func emoji(for card: Card) -> String {
        if emoji[card.id] == nil, emojiList.count > 0 {
            let randomIndex = Int.random(in: 0..<emojiList.count)
            emoji[card.id] = emojiList.remove(at: randomIndex)
        }
        
        return emoji[card.id] ?? "?"
    }
    
    @objc func hide_right_answer(){
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isMatched {
                button.setTitle("", for: .normal)
                button.backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
            }
        }
    }
    
    @IBAction func resetGame(_ sender: UIButton) {
        fReset()
    }
    
    func fReset(){
        game.cards.removeAll()
        Card.lastIdentifier = -1
        game = Memory(numberOfPairsOfCrads: (cardButtons.count + 1) / 2)
        updateButtons()
    }
 */
}

