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
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        gameStatusLabel.text = "We've changed the text!"
        submitButton.setTitle("Submit", for: .normal)
        resetButton.setTitle("Reset", for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

