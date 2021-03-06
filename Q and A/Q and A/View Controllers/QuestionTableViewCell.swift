//
//  QuestionTableViewCell.swift
//  Q and A
//
//  Created by Samantha Gatt on 7/30/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    private func updateViews() {
        guard let thisQuestion = question else { return }
        questionLabel.text = thisQuestion.question
        askerLabel.text = thisQuestion.asker
        answerLabel.text = thisQuestion.answer
    }
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
}
