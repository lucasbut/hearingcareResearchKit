//
//  AuthorizationForm.swift
//  hearingCare
//
//  Created by Thiago-Bernardes on 5/24/16.
//  Copyright © 2016 Lucas Freitas de Oliveira. All rights reserved.
//

import ResearchKit

public var AuthorizationForm: ORKConsentDocument {
    
    let AuthorizationForm = ORKConsentDocument()
    AuthorizationForm.title = "Exemplo de Autorização"
    
    let authSessionType: [ORKConsentSectionType] = [
        .Privacy,
        .DataUse,
        .TimeCommitment,
        .StudySurvey,
        .StudyTasks,
        .Withdrawing
    ]
    
    let authSessions: [ORKConsentSection] = authSessionType.map {
        sessionType in
        
        let sessaoDeAutorizacao = ORKConsentSection(type: sessionType)

        switch sessionType {
        case ORKConsentSectionType.Privacy:
            sessaoDeAutorizacao.summary = "Se você deseja completar esse estudo..."
            sessaoDeAutorizacao.content = "Todos os seus dados serao usados apenas pelos pesquisadores."
            break
        case ORKConsentSectionType.DataUse:
            sessaoDeAutorizacao.summary = "Se você deseja completar esse estudo..."
            sessaoDeAutorizacao.content = "Seus dados serão usados para tirar conclusões a respeito do desenvolvimento de doenças auditiva."
            break
        case ORKConsentSectionType.TimeCommitment:
            sessaoDeAutorizacao.summary = "Se você deseja completar esse estudo..."
            sessaoDeAutorizacao.content = "Terá que participar apenas uma vez, respondendo fielmente as questões."
            break
        case ORKConsentSectionType.StudySurvey:
            sessaoDeAutorizacao.summary = "Se você deseja completar esse estudo..."
            sessaoDeAutorizacao.content = "Terá que responder as perguntas do estudo com seriedade, e participar atenciosametne do teste auditivo."
            break
        case ORKConsentSectionType.StudyTasks:
            sessaoDeAutorizacao.summary = "Se você deseja completar esse estudo..."
            sessaoDeAutorizacao.content = "Responderá na presquisas questões relacionadas ao desenvolvimento de doenças auditivas "
            break
        case ORKConsentSectionType.Withdrawing:
            sessaoDeAutorizacao.summary = "Se você deseja completar esse estudo..."
            sessaoDeAutorizacao.content = "Compromete-se a não abandona-lo até o final, sendo que durará no máximo 15 minutos."
            break
        default: break
            //empty
        }
        
        
        return sessaoDeAutorizacao
    }
    
    AuthorizationForm.sections = authSessions
    
    
    
    AuthorizationForm.addSignature(ORKConsentSignature(forPersonWithTitle: nil, dateFormatString: nil, identifier: "FormAuthorizationSignature"))
    
    return AuthorizationForm

}
