//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Gene Essel on 11/10/17.
//  Copyright © 2017 Terpgene. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray : Array = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var magic8BallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(4))
        magic8BallImage.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

