//
//  AskQuestionViewController.swift
//  Q and A
//
//  Created by Samantha Gatt on 7/30/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
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
