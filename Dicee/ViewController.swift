//
//  ViewController.swift
//  Dicee
//
//  Created by Dasha Onishchenko on 7/2/19.
//  Copyright © 2019 Dasha Onishchenkko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["1", "2", "3", "4", "5", "6"]
    
    var randomDeciIndex1: Int = 0
    var randomDeciIndex2: Int = 0
    
    @IBOutlet weak var deciImageView1: UIImageView!
    @IBOutlet weak var deciImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
        
    }
    func updateDiceImages(){
        
        randomDeciIndex1 = Int.random(in: 0...5)
        randomDeciIndex2 = Int.random(in: 0...5)
        
        deciImageView1.image = UIImage(named: diceArray[randomDeciIndex1])
        deciImageView2.image = UIImage(named: diceArray[randomDeciIndex2])
    }
    

}

