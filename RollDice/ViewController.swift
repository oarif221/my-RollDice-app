//
//  ViewController.swift
//  RollDice
//
//  Created by Omer Arif on 15/02/2017.
//  Copyright © 2017 OmerA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceArray: [String] = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        changeDices()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButton(_ sender: UIButton) {
        
        changeDices()
        
    }

    func changeDices(){
        
        let randomNumber1 = Int(arc4random_uniform(6))
        let randomNumber2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomNumber1])
        diceImageView2.image = UIImage(named: diceArray[randomNumber2])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
    
        changeDices()
        
    }
}

