//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

class TicTacToeBrain {
    
}
    
    

//  THIS IS WHERE YOU WILL MODEL YOUR LOGIC!!!!


//this class handles did i win, keep cheking if i win, who's turn it is


let winCombos = [
     [(0,0), (0,1), (0,2)],
     [(1,0), (1,1), (1,2)],
     [(2,0), (2,1), (2,2)],
     [(0,0), (1,0), (2,0)],
     [(0,1), (1,1), (2,1)],
     [(0,2), (1,2), (2,2)],
     [(0,0), (1,1), (2,2)],
     [(2,0), (1,1), (0,2)]
            ]

//for combo in winCombos {
//    if gameState[combo[0,0]] != (0,0) {
//        
//    }
//}
