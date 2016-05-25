//
//  AudioGeneratorTask.swift
//  hearingCare
//
//  Created by Yeltsin Suares Lobato Gama on 5/24/16.
//  Copyright © 2016 Lucas Freitas de Oliveira. All rights reserved.
//

import ResearchKit

public var AudioGeneratorTask: ORKOrderedTask {
    
   return ORKOrderedTask.toneAudiometryTaskWithIdentifier("", intendedUseDescription: "", speechInstruction: "", shortSpeechInstruction: "", toneDuration: 10, options: .None)

    
    
}