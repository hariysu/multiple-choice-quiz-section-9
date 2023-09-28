//
//  ViewController.swift
//  multiple-choice-quiz2-section-9
//
//  Created by Abdurahman on 28.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var firstChoice: UIButton!
    @IBOutlet weak var secondChoice: UIButton!
    @IBOutlet weak var thirdChoice: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        if quizBrain.checkAnswer(userAnswer: sender.currentTitle!) {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        quizBrain.incrementQuestionCount()
        
        
    }
    
    @objc func updateUI(){
        questionText.text = quizBrain.getQuestionText()
        
        firstChoice.setTitle(quizBrain.getAnswers()[0], for: .normal)
        secondChoice.setTitle(quizBrain.getAnswers()[1], for: .normal)
        thirdChoice.setTitle(quizBrain.getAnswers()[2], for: .normal)
        
        scoreLabel.text = "Score \(String(quizBrain.getScore()))"
        
        firstChoice.backgroundColor = UIColor.clear
        secondChoice.backgroundColor = UIColor.clear
        thirdChoice.backgroundColor = UIColor.clear
        
        progressView.progress = quizBrain.getProgress()
        
    }
    
}

