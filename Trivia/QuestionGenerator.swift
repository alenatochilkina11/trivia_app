//
//  QuestionGenerator.swift
//  Trivia
//
//  Created by Alena Tochilkina on 02.10.2023.
//

import Foundation

class QuestionGenerator {
    static let question1: TriviaQuestion = TriviaQuestion(
        question: "Which planet in our solar system is known as the 'Red Planet'?",
        category: "Science",
        answerOptions: ["Venus",
                        "Jupiter",
                        "Mars",
                        "Neptune"],
        correctAnswerIndex: 2)
    
    static let question2: TriviaQuestion = TriviaQuestion(
        question: "In which Shakespearean play does the phrase 'To be or not to be' appear?",
        category: "Literature",
        answerOptions: ["Macbeth",
                        "Romeo and Juliet",
                        "Hamlet",
                        "Othello"],
        correctAnswerIndex: 2)
    
    static let question3: TriviaQuestion = TriviaQuestion(
        question: "Which of these elements is a noble gas?",
        category: "Science",
        answerOptions: ["Nitrogen",
                        "Hydrogen",
                        "Xenon",
                        "Iron"],
        correctAnswerIndex: 2)
    
    static let question4: TriviaQuestion = TriviaQuestion(
        question: "Who painted the Mona Lisa?",
        category: "Art",
        answerOptions: ["Vincent van Gogh",
                        "Pablo Picasso",
                        "Leonardo da Vinci",
                         "Michelangelo"],
        correctAnswerIndex: 2)
    
    static let question5: TriviaQuestion = TriviaQuestion(
        question: "What is the world's longest river?",
        category: "Geography",
        answerOptions: ["Amazon River",
                        "Mississippi River",
                        "Nile River",
                        "Yangtze River"],
        correctAnswerIndex: 2)
    
    static let triviaQuestions: [TriviaQuestion] = [question1, question2, question3, question4, question5]
    
    static let questionManager: QuestionManager = QuestionManager(questions: triviaQuestions)
}
