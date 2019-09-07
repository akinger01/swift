//
//  ViewController.swift
//  Week1
//
//  Created by Andrew King on 8/26/19.
//  Copyright © 2019 Andrew King. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sayItButtonPressed(_ sender: UIButton) {
        let messages = ["You are Awesome!",
                        "You are Great!",
                        "You are Amazing!",
                        "You are Da Bomb!",
                        "You brighten my day!",
                        "Hey, fabulous!",
                        "You are tremendous!"]
        
//        var newIndex = -1
        var newIndex: Int
        
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        
        
//        messageLabel.text = messages.randomElement()!
        
//        messageLabel.text = messages[index]
//        index += 1
//        if index == messages.count {
//            index = 0
//        }
    }
}
 
