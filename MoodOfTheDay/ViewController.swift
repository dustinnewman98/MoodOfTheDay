//
//  ViewController.swift
//  MoodOfTheDay
//
//  Created by Dustin Newman on 2/5/18.
//  Copyright © 2018 Dustin Newman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var moodLabel: UILabel!
    
    @IBAction func inspireAction(_ sender: UIButton) {
        let foodNum = Int(arc4random_uniform(UInt32(m_foods.count-1)))
        let food = m_foods[foodNum]
        let songNum = Int(arc4random_uniform(UInt32(m_songs.count-1)))
        let song = m_songs[songNum]
        moodLabel.text = "The Mood of Today is Dancing to \"\(song)\" and Eating \(food)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        moodLabel.numberOfLines = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

