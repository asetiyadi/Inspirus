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
    @IBOutlet weak var backImageView: UIImageView!
    
    
    
    func showRandomQuote() {
        var quotes = Quotes();
        
        quoteLabel.text = quotes.getRandomQuote()
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
        backImageView.image = randomImage()
    }
    
    func randomImage() -> UIImage {
        let randomIndex = Int(arc4random()) % 7
        
        if let image = UIImage(named: "image\(randomIndex)") {
            return image
        }
        else {
            return UIImage(named: "image1")!
        }
    }
}

