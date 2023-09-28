//
//  Question.swift
//  multiple-choice-quiz2-section-9
//
//  Created by Abdurahman on 28.09.2023.
//

import Foundation

struct Question {
    var text: String
    var answers: [String]
    var correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        self.correctAnswer = correctAnswer
    }
}
