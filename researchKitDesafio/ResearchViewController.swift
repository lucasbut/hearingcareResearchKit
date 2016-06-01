//
//  ResearchViewController.swift
//  hearingCare
//
//  Created by Thiago-Bernardes on 5/24/16.
//  Copyright © 2016 Lucas Freitas de Oliveira. All rights reserved.
//

import UIKit
import ResearchKit

class ResearchViewController: UIViewController {

    override func viewWillAppear(animated: Bool) {
        
        let taskViewController = ORKTaskViewController(task: ResearchTasks, taskRunUUID: nil)
        taskViewController.delegate = self
        presentViewController(taskViewController, animated: true, completion: nil)
        super.viewWillAppear(animated)

    }
}

extension ResearchViewController : ORKTaskViewControllerDelegate {
    
    func taskViewController(taskViewController: ORKTaskViewController, didFinishWithReason reason:ORKTaskViewControllerFinishReason, error: NSError?) {
        //Handle results with taskViewController.result
            switch reason {
            case .Saved:
                //
                break
            case .Discarded:
                //
                break
            case .Completed:
                break
            case .Failed:
                break
            }

        taskViewController.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
}