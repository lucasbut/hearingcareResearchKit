//
//  AuthorizationTasks.swift
//  hearingCare
//
//  Created by Thiago-Bernardes on 5/24/16.
//  Copyright © 2016 Lucas Freitas de Oliveira. All rights reserved.
//

import ResearchKit
import Foundation

public var AuthorizationTasks: ORKOrderedTask {
    
    var steps = [ORKStep]()
    
    let authorizationForm = AuthorizationForm
    let visualAuthorization = ORKVisualConsentStep(identifier: "AutorizacaoVisual", document: authorizationForm)
    steps += [visualAuthorization]
    
    let signature = authorizationForm.signatures!.first! as ORKConsentSignature
    let authorizationReview = ORKConsentReviewStep(identifier: "RevisaoDeAutorizacao", signature: signature, inDocument: authorizationForm)
    authorizationReview.text = "Revisão de Autorização!"
    authorizationReview.reasonForConsent = "Autorização para entrar no estudo!"
    steps += [authorizationReview]
    
    return ORKOrderedTask(identifier: "TarefasDeAutorizacao", steps: steps)
}
