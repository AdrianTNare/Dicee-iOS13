//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
// ib outlets allows referencing of ui elements
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5

    

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix") ]
        // assign image lit array to the image view ib outlets
        // .randomElement selects a random element in the array
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        
        // increase the image view of the left dice and decrease that of the right dice ,
        leftDiceNumber += 1
        rightDiceNumber -= 1
        
        print("button got clicked")
        print("leftdice number at the end \(leftDiceNumber)")
    }

}

