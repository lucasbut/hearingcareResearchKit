//
//  AudiometryViewController.swift
//  hearingCare
//
//  Created by Lucas Freitas de Oliveira on 5/25/16.
//  Copyright © 2016 Lucas Freitas de Oliveira. All rights reserved.
//

import UIKit

class AudiometryViewController: UIViewController {

    let audioGeneratorObject = ORKAudioGenerator()
    var frequency = 200.0
    var frequencyIncrementValue = 20.0
    var timer: NSTimer!
    var timerCount: NSTimer!
    var tapCount = 0
    var hearingRange = [Double]()
    
    var count = 3
    
    @IBOutlet weak var labelFrequency: SpringLabel!
    @IBOutlet weak var button: SpringButton!
    @IBOutlet weak var labelIntruction: SpringLabel!
    @IBOutlet weak var countdownLabel: UILabel!
    @IBOutlet weak var labelTab: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timerCount = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(update), userInfo: nil, repeats: true)
        
    }
    
    func update() {
        if(count > 0) {
            self.view.userInteractionEnabled = false
            countdownLabel.text = String(format: "%.f", count)
            count -= 1
        } else {
            countdownLabel.hidden = true
            timerCount.invalidate()
            self.view.userInteractionEnabled = true
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(updateFrequency), userInfo: nil, repeats:true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateFrequency() {
        frequency += frequencyIncrementValue
        frequencyIncrementValue += 0.05
        audioGeneratorObject.playSoundAtFrequency(frequency, onChannel: ORKAudioChannel.Left, fadeInDuration: 0.0)
        if frequency >= 20000.0 {
            timer.invalidate()
        }
        
        labelFrequency.text = String(format: "%.0f Hz", frequency)
        
    }
    
    @IBAction func getHearingRange(sender: AnyObject) {
        
        button.animation = "pop"
        button.animate()
        
        
//        labelIntruction.animation = "fadeOut"
//        labelIntruction.animate()
//        labelIntruction.animateToNext {
//            self.labelIntruction.animation = "fadeIn"
//            self.labelIntruction.text = "When you stop hearing the sound tap the button again. "
//            self.labelIntruction.animateTo()
//        }
        
        
//        labelIntruction.animation = "fadeIn"
//        labelIntruction.text = "When you stop hearing the sound tap the button again. "
//        labelIntruction.animate()
        
        tapCount += 1
        hearingRange.append(frequency)
        
        if tapCount == 2 {
            timer.invalidate()
            audioGeneratorObject.stop()
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
