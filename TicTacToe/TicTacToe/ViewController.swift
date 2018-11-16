//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     let brain = TicTacToeBrain()
    @IBOutlet var buttons: [GameButton]!
    
    @IBOutlet var allTheButtons: [GameButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func buttonPressed(_ sender: GameButton) {
        brain.enteredMove()
        if brain.playerOne {
            brain.gameBoard[sender.row][sender.col] = o
                sender.setBackgroundImage(UIImage(named: "o"), for: .normal)
            

            brain.gameResult()
            if brain.playerOneWins {
                print("player One Wins!")
                allTheButtons.forEach{(button) in
                    button.isUserInteractionEnabled = false
                    
                }
            }
        
        } else if brain.playerTwo {
            brain.gameBoard[sender.row][sender.col] = x
            sender.setBackgroundImage(UIImage(named: "x"), for: .normal)
            brain.gameResult()
            if brain.playerTwoWins {
                print("player Two Wins!")
                allTheButtons.forEach{(button) in
                    button.isUserInteractionEnabled = false
                    
                }
            }
            
        }

    }
    

   
//    @IBAction func resetGame(_ resetGameButton: gameButton) {
//        cards = cards.shuffled()
//        for (index, cardButton) in allCardButtons.enumerated() {
//            cards[index].tag = index
//            cardButton.tag = index
//            cardButton.isEnabled = true
//            cardButton.setImage(UIImage(named: MatchingGameName.pokemonCardBack), for: .normal)
//        }
//    }

}
