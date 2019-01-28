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
    @IBOutlet weak var soundSwitch: UISwitch!
    
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    var numberOfImages = 10
    var numberOfSounds = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0..<maxValue-1 )
        } while lastNumber == newIndex
        return newIndex
    }
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer){
        if let sound = NSDataAsset(name: soundName) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: Data in \(soundName) couldn't be played as a sound.")
            }
        } else {
            print("ERROR: File \(soundName) didn't load.")
        }
    }
    
    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if soundSwitch.isOn{
            if soundIndex != -1 {
                awesomePlayer.stop()
            }
        }
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
        
        //show a message
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        //show an image
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        //play a sound
        if soundSwitch.isOn {
            let soundName = "sound\(soundIndex)"
            playSound(soundName: soundName, audioPlayer: &awesomePlayer)
            soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
        }
    }

}
