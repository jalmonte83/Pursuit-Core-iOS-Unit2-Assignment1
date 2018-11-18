//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var buttons: [GameButton]!
    var brain: TicTacToeBrain = TicTacToeBrain()
    @IBOutlet var allTheButtons: [GameButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func buttonPressed(_ sender: GameButton) {
        brain.playerMove()
        if brain.playerOne {
            brain.gameBoard[sender.row][sender.col] = o
                sender.setBackgroundImage(UIImage(named: "o"), for: .normal)
            

            brain.winningCombo()
            if brain.playerOneWins {
                print("player One Wins!")
                allTheButtons.forEach{(button) in
                    button.isUserInteractionEnabled = false
                    
                }
            }
        
        } else if brain.playerTwo {
            brain.gameBoard[sender.row][sender.col] = x
            sender.setBackgroundImage(UIImage(named: "x"), for: .normal)
            brain.winningCombo()
            if brain.playerTwoWins {
                print("player Two Wins!")
                allTheButtons.forEach{(button) in
                    button.isUserInteractionEnabled = false
                    
                }
            }
            
        }

    }
    

   
    @IBAction func newGame(_ sender: UIButton) {
        brain.gameBoard =  [
            [blankSquare,blankSquare,blankSquare],
            [blankSquare,blankSquare,blankSquare],
            [blankSquare,blankSquare,blankSquare]
                            ]
        _ = brain.playerTurn
        brain.playerTurn = 0
        brain.playerOneWins = false
        brain.playerOneWins = false
       
        allTheButtons.forEach{$0.isUserInteractionEnabled = true }
       allTheButtons.forEach{ (button) in button.setBackgroundImage(UIImage(), for: .normal)}
    }

}


