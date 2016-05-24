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
    instructions.title = "Titulo da pesquisa"
    instructions.text = "Instruções da pesquisa."
    steps += [instructions]
    
    
    
    ///
    let nameAnswerFormat = ORKTextAnswerFormat(maximumLength: 20)
    nameAnswerFormat.multipleLines = false
    let nameQuestionStepTitle = "What is your name?"
    let nameQuestionStep = ORKQuestionStep(identifier: "QuestionStep", title: nameQuestionStepTitle, answer: nameAnswerFormat)
    steps += [nameQuestionStep]
    
    
    
    ///Pesquisa
    let questionTitle = "O que você está sentindo?"
    let options = [
        ORKTextChoice(text: "Eu tenho dores de cabeça", value: 0),
        ORKTextChoice(text: "Eu tenho gripe", value: 1),
        ORKTextChoice(text: "Eu tenho febre", value: 2)
    ]
    let answerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: options)
    let perguntaProblemaDoUsuario = ORKQuestionStep(identifier: "perguntaProblemaDoUsuario", title: questionTitle, answer: answerFormat)
    steps += [perguntaProblemaDoUsuario]
    
    
    
    ///
    let colorQuestionStepTitle = "What is your favorite color?"
    let colorTuples = [
        (UIImage(named: "red")!, "Red"),
        (UIImage(named: "orange")!, "Orange"),
        (UIImage(named: "yellow")!, "Yellow"),
        (UIImage(named: "green")!, "Green"),
        (UIImage(named: "blue")!, "Blue"),
        (UIImage(named: "purple")!, "Purple")
    ]
    let imageChoices : [ORKImageChoice] = colorTuples.map {
        return ORKImageChoice(normalImage: $0.0, selectedImage: nil, text: $0.1, value: $0.1)
    }
    let colorAnswerFormat: ORKImageChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithImageChoices(imageChoices)
    let colorQuestionStep = ORKQuestionStep(identifier: "ImageChoiceQuestionStep", title: colorQuestionStepTitle, answer: colorAnswerFormat)
    steps += [colorQuestionStep]
    
    
    ///
    let summaryStep = ORKCompletionStep(identifier: "SummaryStep")
    summaryStep.title = "Right. Off you go!"
    summaryStep.text = "That was easy!"
    steps += [summaryStep]
    
    return ORKOrderedTask(identifier: "TarefasDePesquisa", steps: steps)

}
