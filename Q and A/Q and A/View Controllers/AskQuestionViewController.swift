//
//  AskQuestionViewController.swift
//  Q and A
//
//  Created by Samantha Gatt on 7/30/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    @IBAction func submitQuestionButtonTapped(_ sender: Any) {
        guard let asker = askerTextField.text,
            let question = questionTextView.text else {
                return
            }
        
        if asker != "" && question != "" {
            questionController?.create(question: question, asker: asker)
            
            // Will only pop back if the text field and view are both filled in
            navigationController?.popViewController(animated: true)
        }
    }
    
    var questionController: QuestionController?
    
    @IBOutlet weak var askerTextField: UITextField!    
    @IBOutlet weak var questionTextView: UITextView!
    
}
