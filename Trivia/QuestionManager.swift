//
//  QuestionManager.swift
//  Trivia
//
//  Created by Alena Tochilkina on 02.10.2023.
//

import Foundation

struct TriviaQuestion {
    let question: String
    let category: String
    let answerOptions: [String]
    let correctAnswerIndex: Int
    
    func isAnswerCorrect(_ index: Int) -> Bool {
        return index == correctAnswerIndex
    }
}

class QuestionManager {
    var questions: [TriviaQuestion]
    
    init(questions: [TriviaQuestion]) {
        self.questions = questions
    }
    
    func getQuestion(at index: Int) -> TriviaQuestion? {
        guard index >= 0 && index < questions.count else {
            return nil
        }
        return questions[index]
    }
    
}
