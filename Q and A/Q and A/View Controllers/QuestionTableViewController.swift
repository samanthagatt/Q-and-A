//
//  QuestionTableViewController.swift
//  Q and A
//
//  Created by Samantha Gatt on 7/30/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as? QuestionTableViewCell else { fatalError("Cell not a QuestionTableViewCell") }

        let question = questionController.questions[indexPath.row]
        cell.question = question

        return cell
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let question = questionController.questions[indexPath.row]
            
            questionController.delete(question: question)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }



    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowAskQuestion" {
            guard let destinationVC = segue.destination as? AskQuestionViewController else { return }
            destinationVC.questionController = questionController
            
        } else if segue.identifier == "ShowAnswerQuestion" {
            guard let destinationVC = segue.destination as? AnswerQuestionViewController else { return }
            
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            destinationVC.questionController = questionController
            destinationVC.question = questionController.questions[indexPath.row]
        }
    }

    let questionController = QuestionController()
}
