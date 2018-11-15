//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // 1 == o, 2 == x
var activePlayer = 1
  
    

    
    
    @IBAction func squarePressed(_ sender: GameButton) {
        if activePlayer == 1 {
            sender.setImage(UIImage(named: "o"), for: .normal)
            activePlayer = 2
            
        } else {
            sender.setImage(UIImage(named: "x"), for: .normal)
            activePlayer = 1
        }
        sender.isUserInteractionEnabled = false

    }

    override func viewDidLoad() {
    super.viewDidLoad()
        
      
  }


}

