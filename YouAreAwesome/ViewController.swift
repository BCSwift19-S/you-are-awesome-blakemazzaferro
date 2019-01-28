//
//  ViewController.swift
//  YouAreAwesome
//
//  Created by Blake Mazzaferro on 1/15/19.
//  Copyright © 2019 Blake Mazzaferro. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    var numberOfImages = 10
    var numberOfSounds = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let messages = ["You Are Fantastic!!!",
                        "You Are Great!",
                        "You Are Amazing!",
                        "When the Genius Bar needs help, they call you",
                        "You brighten my day!",
                        "You are da Bomb!",
                        "Hey, fabulous!",
                        "You are tremendous!",
                        "You've got the design skills of Jony Ive!"]
      
        var newIndex: Int
        
        //show a message
        repeat {
            newIndex = Int.random(in: 1..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        //show an image
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        //play a sound
        repeat {
            newIndex = Int.random(in: 0..<numberOfSounds)
        } while soundIndex == newIndex
        
        soundIndex = newIndex
        
        var soundName = "sound\(soundIndex)"
        
        if let sound = NSDataAsset(name: soundName) {
            do {
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                print("ERROR: Data in \(soundName) could'nt be played as a sound.")
            }
        } else {
            print("ERROR: File \(soundName) didn't load.")
        }
        
        
    }

}
