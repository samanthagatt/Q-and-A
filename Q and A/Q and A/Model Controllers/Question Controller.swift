//
//  Question Controller.swift
//  Q and A
//
//  Created by Samantha Gatt on 7/30/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import Foundation

class QuestionController {
    
    private(set) var questions: [Question] = []
    
    func create(question: String, asker: String) {
        let createdQuestion = Question(question: question, asker: asker)
        questions.append(createdQuestion)
    }
    
    func update(question: Question, answer: String, answerer: String) {
        
        guard let index = questions.index(of: question) else { return }
        
        var scratch = question
        scratch.answer = answer
        scratch.answerer = answerer
        
        
        questions.remove(at: index)
        questions.insert(scratch, at: index)
    }
    
    func delete(question: Question) {
        guard let index = questions.index(of: question) else { return }
        questions.remove(at: index)
    }
}
