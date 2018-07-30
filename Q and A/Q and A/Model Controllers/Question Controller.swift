//
//  Question Controller.swift
//  Q and A
//
//  Created by Samantha Gatt on 7/30/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import Foundation

class QuestionController {
    
    var questions: [Question]
    
    func create(question: String, asker: String) {
        let createdQuestion = Question(question: question, asker: asker)
        questions.append(createdQuestion)
    }
    
    func update(question: Question, answer: String, answerer: String) {
        // Might have to come back -- since Question is a struct, why didn't it warn me that question is a let constant and isn't mutable?
        // Does it update the Question in the questions array?
        question.answer = answer
        question.answerer = answerer
    }
    
    func delete(question: Question) {
        guard let index = questions.index(of: question) else { return }
        questions.remove(at: index)
    }
}
