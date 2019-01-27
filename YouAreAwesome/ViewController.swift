//
//  ViewController.swift
//  YouAreAwesome
//
//  Created by Blake Mazzaferro on 1/15/19.
//  Copyright © 2019 Blake Mazzaferro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    var index = 0
    // Code below executes when the app's view first loads
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
      
        var newIndex = -1
        
        repeat {
            newIndex = Int.random(in: 1..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
//    messageLabel.text = messages.randomElement()!
        
        
//        messageLabel.text = messages[index]
//        index += 1
//        if index == messages.count{
//            index = 0
//        }
        
        
//        let message1 = "You Are Awesome!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        }
//        else if messageLabel.text == message2 {
//            messageLabel.text = message3
//        }
//        else{
//            messageLabel.text = message1
//        }
    }

}
