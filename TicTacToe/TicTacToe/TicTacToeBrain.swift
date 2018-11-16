//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit


var blankBox = "-"
var x = "x"
var o = "o"

//struct TicTacToeMove {
//    var x: String
//    var o: String
//}
class TicTacToeBrain {
    
    
    var playerOne = false
    var playerTwo = false
    var gameBoard = [
        [blankBox,blankBox,blankBox],
        [blankBox,blankBox,blankBox],
        [blankBox,blankBox,blankBox]
                        ]
    
    var turnTracker = 0
    var playerOneWins = false
    var playerTwoWins = false
    func enteredMove(){
        turnTracker += 1
        if turnTracker % 2 != 0 {
            playerOne = true
            playerTwo = false
        } else {
            playerOne = false
            playerTwo = true
        }
}

    func gameResult() {
        for row in gameBoard { // this for loop checks only for horizontal wins
            if row == [x,x,x] {
                playerTwoWins = true
                break
            } else if row == [o,o,o] {
                playerOneWins = true
                break
            }
        }
        for columnIndex in 0..<gameBoard[0].count {
            var column = [String]()
            for rowIndex in 0..<gameBoard.count {
                column.append(gameBoard[rowIndex][columnIndex])
                if column == [o,o,o] {
                    playerOneWins = true
                } else if column == [x,x,x] {
                    playerTwoWins = true
                }
                
            }
        }
        var diagonal1 = [String]()
        for i in 0..<gameBoard.count {
            diagonal1.append(gameBoard[i][i])
        if diagonal1 == [o,o,o] {
            playerOneWins = true
        } else if diagonal1 == [x,x,x]{
            playerTwoWins = true
            }
    }
        var diagonal2 = [String]()
        for i in 0..<gameBoard.count {
            diagonal2.append(gameBoard[i][gameBoard.count - 1 - i])
            }

        }
    }

