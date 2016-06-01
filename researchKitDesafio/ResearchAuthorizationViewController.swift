//
//  ResearchIntro.swift
//  hearingCare
//
//  Created by Thiago-Bernardes on 5/24/16.
//  Copyright © 2016 Lucas Freitas de Oliveira. All rights reserved.
//

import ResearchKit
import UIKit

class ResearchAuthorizationViewController: UIViewController{
    
    var isCompleted: Bool = false
    
    let authorizationViewController = ORKTaskViewController(task: AuthorizationTasks, taskRunUUID: nil)
    var isAuthorized: Bool! {
        set {
            NSUserDefaults.standardUserDefaults().setBool(newValue, forKey: "isAuthorized")
        }
        get {
            return NSUserDefaults.standardUserDefaults().boolForKey("isAuthorized")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if isAuthorized == false  {
            authorizationViewController.delegate = self
            presentViewController(authorizationViewController, animated: true, completion: nil)
        } else if isCompleted == false{
            self.performSegueWithIdentifier("showResearch", sender: self)
            isCompleted = true
        } else {
            self.performSegueWithIdentifier("showAudio", sender: self)
        }
        
    }
    
}

extension ResearchAuthorizationViewController : ORKTaskViewControllerDelegate {
    
    func taskViewController(taskViewController: ORKTaskViewController, didFinishWithReason reason:ORKTaskViewControllerFinishReason, error: NSError?) {
        //Handle results with taskViewController.result
        
        isAuthorized = true
        taskViewController.dismissViewControllerAnimated(true, completion: {
            
        })
    }
    
}
