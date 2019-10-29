//

//  ViewController.swift

//  BullsEye

//

//  Created by MacStudent on 2019-10-25.

//  Copyright © 2019 MacStudent. All rights reserved.

//



import UIKit

class ViewController: UIViewController {
    
var currentValue: Int = 0
    
    var targetValue: Int = 0
    var score = 0
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var targetLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
       // slider.value = 90
        
        //   currentValue = lround(slider.value)
        
        //targetValue = 1 + Int(arc4random_uniform(100))
        
        //currentValue = Int(slider.value)
        
        startNewRound()
        
        // Do any additional setup after loading the view.
        
    }
    
    
    
    //    func debugcode(){
    
    //        print("1")
    
    //        print("2")
    
    //    }
    
    //
    
    
    
    @IBAction func showAlert() {
        
        //     1st day    let alert = UIAlertController(title: "Hello, World",
        
        //                                      message: "This is my first app!",
        
        //                                      preferredStyle: .alert)
        
        //        let action = UIAlertAction(title: "Awesome", style: .default,
        
        //
        
        //                                   handler: nil)
        
        //        alert.addAction(action)
        
        //        present(alert, animated: true, completion: nil)
        
        let difference = abs(targetValue - currentValue)
        let points = 100 - difference
        
        score += points
        let message = "You scored \(points) points"
        
        
        
        //let message = "The value of the slider is: \(currentValue)" + "\nThe target value is\(targetValue)" + "\nThe difference is: \(difference)"
        
        let alert = UIAlertController(title: "Hello, World",message: message,      //change
            
            preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK",        //change
            
            style: .default,
            
            handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        startNewRound()
        
    }
    @IBAction func sliderMoved(_ slider: UISlider) {
        
        //debugcode()
        
        currentValue = lroundf(slider.value)
        
        print("The value of the slider is now: \(slider.value)")
        
        print("The value of the slider is now: \(currentValue)")
        }
    func startNewRound() {
    targetValue = 1 + Int(arc4random_uniform(100))
    slider.value = Float(currentValue)
    updateLabels()
        }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        
    }
    
    
    
    
}







