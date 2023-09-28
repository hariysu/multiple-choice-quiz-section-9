//
//  QuizBrain.swift
//  multiple-choice-quiz2-section-9
//
//  Created by Abdurahman on 28.09.2023.
//

import Foundation

struct QuizBrain{
    let quiz: [Question] = [ Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                             Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
                             Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                             Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                             Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                             Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                             Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                             Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                             Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                             Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    var questionCount = 0
    var score = 0
    
    mutating func incrementQuestionCount(){
        if questionCount < quiz.count - 1  {
            questionCount += 1
        }else {
            questionCount = 0
            score = 0
        }
    }
    
    func getQuestionText() ->String {
        return quiz[questionCount].text
    }
    
    func getAnswers() -> [String] {
        return quiz[questionCount].answers
    }
    
    func getScore() -> Int {
        return score
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if quiz[questionCount].correctAnswer == userAnswer {
            score += 1
            return true
        }else {
            return false
        }
    }
    
    func getProgress() -> Float{
        return Float(questionCount + 1) / Float(quiz.count)
    }
}
