//
//  Question.swift
//  Q and A
//
//  Created by Samantha Gatt on 7/30/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import Foundation

struct Question: Equatable {
    
    // Change to let constants if none of them are editable
    var question: String
    var asker: String
    var answer: String?
    var answerer: String?
    
    init(question: String, asker: String, answer: String? = nil, answerer: String? = nil) {
        self.question = question
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
    }
}
