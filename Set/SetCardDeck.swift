//
//  SetCardDeck.swift
//  Set
//
//  Created by Denis on 09.02.2019.
//  Copyright © 2019 Denis Vitrishko. All rights reserved.
//

import Foundation

struct SetCardDeck {
     private(set) var cards = [SetCard]()
    init() {
        for number in SetCard.Variant.all {
            for color in SetCard.Variant.all{
                for shape in SetCard.Variant.all{
                    for fill in SetCard.Variant.all{
                        cards.append(SetCard (number: number,
                                              shape: shape,
                                              color: color,
                                               fill: fill))
                    }
                }
            }
        }
    }
    mutating func draw() -> SetCard?{
        if cards.count > 0{
            return cards.remove(at: cards.count.arc4random)
        }else{
            return nil
        }
    }
}
extension Int{
    var arc4random:Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))}
        else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs (self))))
        }else{
            return 0
        }
    }
}
