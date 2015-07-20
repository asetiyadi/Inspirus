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
        sender.backgroundColor = randomColor()
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
    
    func randomColor() -> UIColor {
        let randomIndex = Int(arc4random()) % 5
        
        switch randomIndex {
        case 0: return UIColor(red: 211/255.0, green: 123/255.0, blue: 235/255.0, alpha: 0.9)
        case 1: return UIColor(red: 231/255.0, green: 122/255.0, blue: 211/255.0, alpha: 0.9)
        case 2: return UIColor(red: 167/255.0, green: 189/255.0, blue: 223/255.0, alpha: 0.9)
        case 3: return UIColor(red: 233/255.0, green: 234/255.0, blue: 209/255.0, alpha: 0.9)
        case 4: return UIColor(red: 209/255.0, green: 198/255.0, blue: 177/255.0, alpha: 0.9)
        default: return UIColor(red: 244/255.0, green: 178/255.0, blue: 33/255.0, alpha: 0.9)
        }
    }
}

