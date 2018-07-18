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
    @IBOutlet weak var attempts: UILabel!
    
    var randomNumber: Int!
    var attempt = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomNumber = Int(arc4random_uniform(101)) //Typecasting the UInt32 that arc4random_uniform() returns to an Int
        gameStatusLabel.text = "Good Luck!"
        attempts.text = "5"
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
        
        attempt -= 1
        attempts.text = "\(attempt)"
        
        if attempt > 0 {
            if userGuess == randomNumber {
                gameStatusLabel.text = "Correct! You won!"
            } else if userGuess < randomNumber {
                gameStatusLabel.text = "Your guess was too low!"
            } else {
                gameStatusLabel.text = "Your guess was too high"
            }
        } else {
            gameStatusLabel.text = "You lose! The correct number was \(randomNumber!). Try again!"
            submitButton.isEnabled = false
        }
        answerField.text = ""
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        gameStatusLabel.text = "Good Luck!"
        randomNumber = Int(arc4random_uniform(101))
        answerField.text = ""
        submitButton.isEnabled = true
        attempt = 5
        attempts.text = "5"
    }
    
    
}

