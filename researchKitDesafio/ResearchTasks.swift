//
//  ResearchTasks.swift
//  hearingCare
//
//  Created by Thiago-Bernardes on 5/24/16.
//  Copyright © 2016 Lucas Freitas de Oliveira. All rights reserved.
//

import ResearchKit

public var ResearchTasks: ORKOrderedTask {

    var steps = [ORKStep]()
    
    
    ///Instruções
    let instructions = ORKInstructionStep(identifier: "Instrucoes")
    instructions.title = "Pesquisa sobre saude auditiva"
    instructions.text = "Instruções da pesquisa."
    steps += [instructions]
    
    
    

    ///Infoma faixa etaria
    let questionTitle = "Informe sua faixa-etária?"
    let options = [
        ORKTextChoice(text: "Abaixo de 15 anos (Criança)", value: 0),
        ORKTextChoice(text: "Entre 15 e 17 anos(Adolescente)", value: 1),
        ORKTextChoice(text: "Entre 18 e 24 anos (Jovem)   ", value: 2),
        ORKTextChoice(text: "Entre 25 e 29 anos (jovem adulto).", value: 3),
        ORKTextChoice(text: "Entre 30 e 60 anos (adulto).", value: 4),
        ORKTextChoice(text: "Acima de 60 anos (idoso).", value: 5),
    ]
    let answerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: options)
    let perguntaFaixaEtaria = ORKQuestionStep(identifier: "perguntaFaixaEtaria", title: questionTitle, answer: answerFormat)
    steps += [perguntaFaixaEtaria]
   

    
  
    ///Infoma problema auditivo na famili
    let questionHistoryTitle = "Tem algum histórico de problema auditivo na familia?"
    let optionsHistory = [
        ORKTextChoice(text: "Sim", value: 0),
        ORKTextChoice(text: "Não", value: 1),
            ]
    let answerHistoryFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: optionsHistory)
    let askHistory = ORKQuestionStep(identifier: "perguntaHistoricoFamiliar", title: questionHistoryTitle, answer: answerHistoryFormat)
    steps += [askHistory]
    
    
    
    //Informa trabalha em locais barulhentos
    let questionJobTitle = "Você trabalha em locais barulhentos, como em construções e fabricas?"
    let optionsJob = [
        ORKTextChoice(text: "Sim", value: 0),
        ORKTextChoice(text: "Não", value: 1),
        ]
    let answerJobFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: optionsJob)
    let askJob = ORKQuestionStep(identifier: "perguntaTrabalho", title: questionJobTitle, answer: answerJobFormat)
    steps += [askJob]
    
    
    //Seu trabalho inclui o uso de armas de fogo e motores
    let questionMotorTitle = "Seu trabalho inclui o uso de armas de fogo e motores a jato que podem causar surdez imediata e permanente ?"
    let optionsMotor = [
        ORKTextChoice(text: "Sim", value: 0),
        ORKTextChoice(text: "Não", value: 1),
        ]
    let answerMotorFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: optionsMotor)
    let askMotor = ORKQuestionStep(identifier: "perguntaMotor", title: questionMotorTitle, answer: answerMotorFormat)
    steps += [askMotor]

    
    
    //Seu trabalho inclui o uso de armas de fogo e motores
    let questionCostumeTitle = " Tem o costume muita música alta, nos fones de ouvido ou não, e outras atividades de recriação, como motociclismo, podem aumentar muito o risco de perda auditiva ?"
    let optionsCostume = [
        ORKTextChoice(text: "Sim", value: 0),
        ORKTextChoice(text: "Não", value: 1),
        ]
    let answerCostumeFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: optionsCostume)
    let askCostume = ORKQuestionStep(identifier: "perguntaCostume", title: questionCostumeTitle, answer: answerCostumeFormat)
    steps += [askCostume]


    
    
    
    
    

    
    ///
    let summaryStep = ORKCompletionStep(identifier: "SummaryStep")
    summaryStep.title = "Muito bem vamos para o proximo passo =)!"
    summaryStep.text = "Essa foi fácil!"
    steps += [summaryStep]
    
    return ORKOrderedTask(identifier: "TarefasDePesquisa", steps: steps)

}
