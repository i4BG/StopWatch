//
//  ViewController.swift
//  StopWatch
//
//  Created by Ivaylo Todorov on 7.11.15 г..
//  Copyright © 2015 г. Ivaylo Todorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var time = 0
    
    @IBAction func stopButton(sender: AnyObject) {
        
        timer.invalidate()
        
        time = 0
        
        timerLabel.text = "0"
    }
    
    @IBAction func pauseButton(sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    
    
    func increaseTimer() {
        
        time++
        
        timerLabel.text = "\(time)"
        
    }
    
    @IBAction func startButton(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        
    }
    
    @IBOutlet var timerLabel: UILabel!
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

