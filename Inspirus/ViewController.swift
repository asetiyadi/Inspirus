//
//  ViewController.swift
//  Inspirus
//
//  Created by Andi Setiyadi on 7/18/15.
//  Copyright (c) 2015 Andi Setiyadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBOutlet weak var quoteImage: UIImageView!
    
    //array of quotes
    var quotes = ["Stay Hungry, Stay Foolish.", "All wonders you seek are within yourself.", "Service to others is the rent you pay for your room here on Earth.", "Faith is taking the first step even when you don't see the whole staircase.", "If your ship doesn't come in, swin out to it.", "Relentless optimism is what moves the world forward.", "Your time is limited so don't waste it living someone else's life.", "Our lives begin to end the day we become silent about things that matter.", "If your dreams don't scare you, they are not big enough.", "If you are not willing to risk the unusual, you will have to settle for the ordinary.", "I act despite of my mood!", "You decided to pursue your dreams. That's confidence!", "Continuous effort - not strength or intelligence - is the key to unclocking our potential.", "When you knock on the door of opportunities, it is work who answers!", "Happiness is not something ready made. It comes from your own actions.", "Be kind whenever possible. It is always possible!", "Try not to become a man of succses but rather to become a man of value."]
    
    func showRandomQuote() {
        //to get random number that will be between 0 through the index of last element
        var index: Int = Int(arc4random()) % quotes.count
        quoteLabel.text = quotes[index]
    }
    
    func showRandomImage() {
        
    }
    
    /*func getRandomImage() -> UIImage {
        var index: Int = Int(arc4random()) % 6
        
        return "image\(index)"
    }*/

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        showRandomQuote()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }

    //Connection between button and viewController
    @IBAction func inspireMeDidTap(sender: UIButton) {
        showRandomQuote()
    }
}

