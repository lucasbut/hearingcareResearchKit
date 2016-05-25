//
//  ViewController.swift
//  researchKitDesafio
//
//  Created by Lucas Freitas de Oliveira on 5/24/16.
//  Copyright © 2016 Lucas Freitas de Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let audioGeneratorObject = ORKAudioGenerator()
    var frequency = 200.0
    var frequencyIncrementValue = 20.0
    var timer: NSTimer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        

    }
    
    func updateFrequency() {
        frequency += frequencyIncrementValue
        frequencyIncrementValue += 0.05
        audioGeneratorObject.playSoundAtFrequency(frequency, onChannel: ORKAudioChannel.Left, fadeInDuration: 0.0)
        if frequency >= 20000.0 {
            timer.invalidate()
        }
    }

}

