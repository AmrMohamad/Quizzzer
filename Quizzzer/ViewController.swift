//
//  ViewController.swift
//  Quizzzer
//
//  Created by Amr Mohamad on 02/08/2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentIndexOfQuestion]
    }

    @IBOutlet var  questionLabel : UILabel!
    @IBOutlet var  answerLabel : UILabel!

    
    let questions: [String] = [
        "What is 7+7 ?",
        "What is  the capital of A7A?",
        "What is  cognac made from ?"
    ]
    let answers: [String] = [
        "14",
        "kosomk",
        "Grapes"
    ]
    
    var currentIndexOfQuestion: Int = 0
    
    @IBAction func showNextQuestion (_ sender: UIButton){
        currentIndexOfQuestion += 1
        if currentIndexOfQuestion == questions.count {
            currentIndexOfQuestion = 0
        }
        let question: String = questions[currentIndexOfQuestion]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    @IBAction func showAnswer (_ sender: UIButton){
        let answer: String = answers[currentIndexOfQuestion]
        answerLabel.text = answer
    }
}

