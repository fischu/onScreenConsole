//
//  ViewController.swift
//  FFF
//
//  Created by Mihai Fischer on 18/02/2019.
//  Copyright © 2019 Mihai Fischer. All rights reserved.
//

import UIKit
import OnScreenConsole

class ViewController: UIViewController {

    var cc:OnScreenConsole!
    
    let quotesArray = ["Stay Hungry. Stay Foolish. - Steve Jobs",
    "Good Artists Copy, Great Artists Steal. - Pablo Picasso",
    "Argue with idiots, and you become an idiot. - Paul Graham",
    "Be yourself; everyone else is already taken. - Oscar Wilde",
    "Simplicity is the ultimate sophistication. - Leonardo Da Vinci"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // OnScreenConsole setup with frame
        cc = OnScreenConsole(frame: CGRect(x: 10, y: 60, width: view.frame.size.width-20, height: 200))
        
        // Enable row numbers
        cc.showRowNumber = true
        
        // Customization
        cc.backgroundColor = .clear
        cc.textColor = .green
        
        view.addSubview(cc)
        
        
    }

    @IBAction func addText(_ sender: Any) {
        
        cc!.newLineWith(quotesArray[Int(arc4random_uniform(UInt32(quotesArray.count)))])
    }
    
}

