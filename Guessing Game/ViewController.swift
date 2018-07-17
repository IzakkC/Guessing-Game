//
//  ViewController.swift
//  Guessing Game
//
//  Created by Izakk Camillo on 7/16/18.
//  Copyright © 2018 Izakk Camillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gameStatusLabel: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var answerField: UITextField!
    
    var randomNumber: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomNumber = Int(arc4random_uniform(101)) //Typecasting the UInt32 that arc4random_uniform() returns to an Int
        gameStatusLabel.text = "Good Luck!"
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitButtonTapped(_ sender: Any) {
        //Creates a new constant by attempting to convert what the user has entered inti the answerField to an int. If it can't, we break out of the function.
        guard let userGuess = Int(answerField.text!) else {
            return
        }
        
        //Check to make sure that the number that the user put in is between 0 and 100. Break out of the function if it isn't
        if userGuess < 0 || userGuess > 100 {
            return
        }
        
        if userGuess == randomNumber {
            gameStatusLabel.text = "Correct! You won!"
        } else if userGuess < randomNumber {
            gameStatusLabel.text = "Your guess was too low!"
        } else {
            gameStatusLabel.text = "Your guess was too high"
        }
        
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        gameStatusLabel.text = "You tapped the reset button"
    }
    
    
}

