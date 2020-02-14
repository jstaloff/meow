//
//  ViewController.swift
//  MEOW
//
//  Created by Jason Staloff on 2/14/20.
//  Copyright © 2020 Jason Staloff. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

        override func viewDidLoad() {
            super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
var meowSound: AVAudioPlayer?

    @IBAction func meowButtonTapped(_ sender: UIButton) {
        print("Meow button got tapped.")
        
        let path = Bundle.main.path(forResource: "meow", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)

        do {
            meowSound = try AVAudioPlayer(contentsOf: url)
            meowSound!.play()
        } catch {
            // couldn't load file :(
        }

    }
}

