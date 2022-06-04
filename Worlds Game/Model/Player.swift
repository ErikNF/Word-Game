//
//  Player.swift
//  Worlds Game
//
//  Created by Эрик Нагаев on 13.05.2022.
//

import Foundation


struct Player {
    let name: String
    private(set) var score = 0
    
    
    mutating func add(score: Int) {
        self.score += score
    }
}


