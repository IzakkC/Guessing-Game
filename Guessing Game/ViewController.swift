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
        gameStatusLabel.text = "\(randomNumber!)"
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitButtonTapped(_ sender: Any) {
        gameStatusLabel.text = "You tapped the submit button"
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        gameStatusLabel.text = "You tapped the reset button"
    }
    
    
}

