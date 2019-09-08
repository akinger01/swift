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
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer){
        if let sound = NSDataAsset(name: soundName){
            //check if sound.data is a sound file
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer .play()
            } catch {
                print("ERROR: data in \(soundName) could not be played as a sound")
            }
        } else {
            print("ERROR: file \(soundName) didn't laod.")
        }
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat{
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
        return newIndex
    }

    @IBAction func sayItButtonPressed(_ sender: UIButton) {
        let messages = ["You are Awesome!",
                        "You are Great!",
                        "You are Amazing!",
                        "You are Da Bomb!",
                        "You brighten my day!",
                        "Hey, fabulous!",
                        "You are tremendous!"]

        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        var imageCodes = [5490, 3603]
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "IMG_\(imageCodes[imageIndex])")
         

        songIndex = nonRepeatingRandom(lastNumber: songIndex, maxValue: numberOfSongs) 
        //Play Sound
        let soundName = "sound\(songIndex)"
        playSound(soundName: soundName, audioPlayer: &awesomePlayer)
    }
}
 
