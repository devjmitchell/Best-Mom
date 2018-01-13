//
//  ViewController.swift
//  Best Mom
//
//  Created by Jason Mitchell on 12/23/17.
//  Copyright © 2017 Jason Mitchell. All rights reserved.
//

/*
 If anyone view this code - don't judge me!
 I'm still new to Swift (at the time of creating this app) and wanted to make a simple, yet sweet app for my lovely wife!
 */

import UIKit

class ViewController: UIViewController {
    
    let awesomeQuotes = [
        "I love how great you are with the kids - Jason",
        "I love how you can make me laugh even when we're mad at each other - Jason",
        "You're such a loving and great mom to our little ones - Jason",
        "I'm so happy to have a family with you - Jason",
        "I'm excited for our future - Jason",
        "You're beeeaaauuutiful - Jason",
        "We're so lucky to have you - Jason",
        "Thank you for being an awesome mom and wife - Jason",
        "Let's grow old together - Jason",
        "You're so pretty - Jason",
        "You're such a cutie pie - Jason",
        "I love you that you put up with me - Jason",
        "I'm so happy we found each other - Jason",
        "I'm happy that we've been together so long and have so much longer to go - Jason",
        "I love you - Jason",
        "You're the best mom in the world - Julia",
        "You make our lives magical - Julia",
        "I love your cooking - Julia",
        "You give us the best adventures - Julia",
        "I love you - Julia",
        "You're the best mom ever - Austin",
        "I love you - Austin",
        "I love you - Brynn"
    ]
    
    let backgroundImages = ["1", "2", "3", "4", "5"]
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newQuote()
        newBackgroundImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func screenPressed(_ sender: UIButton) {
        newQuote()
        newBackgroundImage()
    }
    
    func newQuote() {
        quoteLabel.text = (awesomeQuotes[Int(arc4random_uniform(UInt32(awesomeQuotes.count)))])
    }
    
    func newBackgroundImage() {
        imageView.image = UIImage(named: (backgroundImages[Int(arc4random_uniform(UInt32(backgroundImages.count)))]))
    }
    
}

