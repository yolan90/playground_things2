import Foundation

enum Rank : Int, CaseIterable {
    case Ace = 1
    case Jack = 11
    case Queen = 12
    case King = 13
    case Two = 2
    case Three = 3
    case Four = 4
    case Five = 5
    case Six = 6
    case Seven = 7
    case Eight = 8
    case Nine = 9
    case Ten = 10
}

enum Suit : Int, CaseIterable {
    case clubs = 1
    case hearts = 2
    case diamonds = 3
    case spades = 4
}

var cardDeck : Array<String> = []
for i in Rank.allCases {
    for j in Suit.allCases {
        cardDeck.append("\(i) \(j)")
    }
}
cardDeck.shuffle()

//for i in 0...4 {
//    print(cardDeck[i])
//}
print(cardDeck[0...5])

// possibility 2
//declare var -> Rank which declare the raw value by Int.random
//declare var -> Suit which declare the raw value by Int.random

