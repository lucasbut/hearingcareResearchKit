//
//  ViewController.swift
//  researchKitDesafio
//
//  Created by Lucas Freitas de Oliveira on 5/24/16.
//  Copyright © 2016 Lucas Freitas de Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let search = HearingCareSearch()
        search.createItem("identifierHearing", title: "hearing", description: "enjoy to the hearing health research with\n HearingCare")
        search.createItem("identifierCare", title: "care", description: "enjoy to the hearing health research with\n HearingCare")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        

    }
    
   

}

