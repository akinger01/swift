//
//  ViewController.swift
//  Week1
//
//  Created by Andrew King on 8/26/19.
//  Copyright © 2019 Andrew King. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    let numberOfImages = 2
    let numberOfSongs = 3
    var songIndex = -1
    
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
        
        var newIndex: Int
        
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        repeat{
            newIndex = Int.random(in: 0..<numberOfImages )
        } while newIndex == imageIndex
        
        var imageCodes = [5490, 3603]
        imageIndex = newIndex 
        awesomeImageView.image = UIImage(named: "IMG_\(imageCodes[imageIndex])")
        
        //play sound
        repeat{
            newIndex = Int.random(in: 0..<numberOfSongs )
        } while songIndex == newIndex
        
        songIndex = newIndex
        
        var soundName = "sound\(songIndex)"
        if let sound = NSDataAsset(name: soundName){
            //check if sound.data is a sound file
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                    awesomePlayer.play()
            } catch {
                    print("ERROR: data in \(soundName) could not be played as a sound")
                }
        } else {
            print("ERROR: file \(soundName) didn't laod.")
        }
        
    }
}
 
