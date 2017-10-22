//
//  ViewController.swift
//  ColdCallv2
//
//  Created by Raquel Domingo on 9/8/17.
//  Copyright © 2017 Raquel Domingo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var randomNumber: UILabel!
    
    let names = [
        "Jay",
        "Bryant",
        "Jimmy",
        "Cody",
        "Spongy",
        "Commet",
        "Michael",
        "Sarah",
        "Juanita",
        "Princess",
        "Shaniqua",
        "Uniqua"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = "ready?"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func changeNameButtonPressed(_ sender: UIButton) {
        let rand = Int(arc4random_uniform(UInt32(names.count)))
        let randNum = Int(arc4random_uniform(5) + 1)
        name.text = names[rand]
        randomNumber.text = String(randNum)
        
        if randNum == 1 || randNum == 2 {
            randomNumber.textColor = UIColor.red
        } else if randNum == 3 || randNum == 4 {
            randomNumber.textColor = UIColor.orange
        } else if randNum == 5 {
            randomNumber.textColor = UIColor.green
        }
    }
    
}
