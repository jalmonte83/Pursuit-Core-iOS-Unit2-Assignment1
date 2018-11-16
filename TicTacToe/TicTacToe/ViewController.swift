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
        brain.enteredMove()
        if brain.playerOne {
            brain.gameBoard[sender.row][sender.col] = o
                sender.setBackgroundImage(UIImage(named: "o"), for: .normal)
            

            brain.gameResult()
            if brain.playerOneWins {
                print("player One Wins!")
                allTheButtons.forEach{(button) in
                    button.isEnabled = false
                    
                }
            }
        
        } else if brain.playerTwo {
            brain.gameBoard[sender.row][sender.col] = x
            sender.setBackgroundImage(UIImage(named: "x"), for: .normal)
            brain.gameResult()
            if brain.playerTwoWins {
                print("player Two Wins!")
                allTheButtons.forEach{(button) in
                    button.isEnabled = false
                    
                }
            }
            
        }

    }
    

   
    @IBAction func newGame(_ sender: UIButton) {
        brain.gameBoard =  [
            [blankBox,blankBox,blankBox],
            [blankBox,blankBox,blankBox],
            [blankBox,blankBox,blankBox]
                            ]
        _ = brain.turnTracker
        brain.turnTracker = 0
        brain.playerOneWins = false
        brain.playerOneWins = false
       
        allTheButtons.forEach{$0.isEnabled = true }
        allTheButtons.forEach{ (button) in button.setBackgroundImage(UIImage(), for: .normal)}
    }

}


