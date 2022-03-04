//
//  ViewController.swift
//  DiceRoll
//
//  Created by Jacob Pantuso on 2022-03-03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView1: UIImageView!
    @IBOutlet weak var ImageView2: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    var score = 0
    var images = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    var dice = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for image in images {
            dice.append(UIImage(named: image)!)
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func rollPressed(_ sender: Any) {
        animate(ImageView2: ImageView2)
        animate(ImageView2: ImageView1)
        let a = Int.random(in: 0...5)
        let b = Int.random(in: 0...5)
        ImageView1.image = UIImage(named: images[a])
        ImageView2.image = UIImage(named: images[b])
        score = a + 1 + b + 1
        resultLabel.text = "Result: \(score)"
    }
    
    func animate(ImageView2: UIImageView) {
        ImageView2.animationImages = dice
        ImageView2.animationDuration = 1
        ImageView2.animationRepeatCount = 1
        ImageView2.startAnimating()
    }
}

