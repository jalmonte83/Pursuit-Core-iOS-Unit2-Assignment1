//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit


var blankSquare = "-"
var x = "x"
var o = "o"


class TicTacToeBrain {
    
    
    var playerOne = false
    var playerTwo = false
    var gameBoard = [
        [blankSquare,blankSquare,blankSquare],
        [blankSquare,blankSquare,blankSquare],
        [blankSquare,blankSquare,blankSquare]
                        ]
    
    var playerTurn = 0
    var playerOneWins = false
    var playerTwoWins = false
    func playerMove(){
        playerTurn += 1
        if playerTurn % 2 != 0 {
            playerOne = true
            playerTwo = false
        } else {
            playerOne = false
            playerTwo = true
        }
}

    func winningCombo() {
        for row in gameBoard {
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
        var diagonalOne = [String]()
        for i in 0..<gameBoard.count {
            diagonalOne.append(gameBoard[i][i])
        if diagonalOne == [o,o,o] {
            playerOneWins = true
        } else if diagonalOne == [x,x,x]{
            playerTwoWins = true
            }
    }
        var diagonalTwo = [String]()
        for i in 0..<gameBoard.count {
            diagonalTwo.append(gameBoard[i][gameBoard.count - 1 - i])
            }

        }
    }

