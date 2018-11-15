//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class TicTacToeBrain {
    
}
    
    

//  THIS IS WHERE YOU WILL MODEL YOUR LOGIC!!!!


//this class handles did i win, keep cheking if i win, who's turn it is


//let winCombos = [
//     [(0,0), (0,1), (0,2)],
//     [(1,0), (1,1), (1,2)],
//     [(2,0), (2,1), (2,2)],
//     [(0,0), (1,0), (2,0)],
//     [(0,1), (1,1), (2,1)],
//     [(0,2), (1,2), (2,2)],
//     [(0,0), (1,1), (2,2)],
//     [(2,0), (1,1), (0,2)]
//            ]
let winCombos = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7]
]


var gameState = [0,0,0,0,0,0,0,0,0]

var activePlayer = 1

func squarePressed(_ sender: GameButton) {
    if activePlayer == 1 {
        sender.setImage(UIImage(named: "o"), for: .normal)
        activePlayer = 2
        
        
    } else {
        sender.setImage(UIImage(named: "x"), for: .normal)
        activePlayer = 1
    }
    sender.isUserInteractionEnabled = false
//
//for combo in winCombos {
//    if gameState[[0][0] != (0,0) {
//        
//    }
}

