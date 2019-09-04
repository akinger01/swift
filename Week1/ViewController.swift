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
        
        messageLabel.text = messages[index]
        index += 1
        if index == messages.count {
            index = 0
//            comment to repush
//        if messageLabel.text == messages[0] {
//            messageLabel.text = messages[1]
//            messageLabel.textColor = UIColor.red
//        } else if messageLabel.text == messages[1] {
//            messageLabel.text = messages[2]
//            messageLabel.textColor = UIColor.blue
//        } else {
//            messageLabel.text = messages[0]
//            messageLabel.textColor = UIColor.green
        }
    }
}
 
