//
//  AnswerQuestionViewController.swift
//  Q and A
//
//  Created by Samantha Gatt on 7/30/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

class AnswerQuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }

    func updateViews() {
        guard let thisQuestion = question else { return }
        
        questionLabel.text = thisQuestion.question
        askerLabel.text = thisQuestion.asker
        
        guard let answer = thisQuestion.answer,
            let answerer = thisQuestion.answerer else {
                return
        }
        answerTextView.text = answer
        answererTextField.text = answerer
        
/*
        if let answer = thisQuestion.answer,
            let answerer = thisQuestion.answerer {
            answerTextView.text = answer
            answererTextField.text = answerer
        }
 */
    }
    
    
    @IBAction func submitAnswerButtonTapped(_ sender: Any) {
        guard let answer = answerTextView.text,
            let answerer = answererTextField.text else {
                return
        }
        
        if answer != "" && answerer != "" {
            guard let thisQuestion = question else { return }
            questionController?.update(question: thisQuestion, answer: answer, answerer: answerer)
            
            navigationController?.popViewController(animated: true)
        }
    }
    
    var questionController: QuestionController?
    var question: Question?
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
}
