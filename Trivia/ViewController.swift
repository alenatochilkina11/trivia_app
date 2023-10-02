//
//  ViewController.swift
//  Trivia
//
//  Created by Alena Tochilkina on 02.10.2023.
//

import UIKit

class ViewController: UIViewController {
    let numberOfQuestions = QuestionGenerator.questionManager.questions.count

    // UI elements on the screen
    @IBOutlet weak var questionCounterText: UITextView!
    @IBOutlet weak var categoryText: UITextView!
    @IBOutlet weak var questionText: UITextView!
    @IBOutlet weak var optionOneLabel: UIButton!
    @IBOutlet weak var optionTwoLabel: UIButton!
    @IBOutlet weak var optionThreeLabel: UIButton!
    @IBOutlet weak var optionFourLabel: UIButton!

    
    var gameIsOver: Bool
    var questionCounter: Int
    var score: Int
    var currentQuestion: TriviaQuestion
    
    required init?(coder: NSCoder) {
        self.gameIsOver = false
        self.questionCounter = 0
        self.score = 0
        self.currentQuestion = QuestionGenerator.questionManager.questions[0]
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(questionCounter == 0){
            questionCounterText.isEditable = false
            categoryText.isEditable = false
            questionText.isEditable = false
            
            initialSetUp()
        }
    }
    
    func setupQuestionUI(question: TriviaQuestion){
        questionCounterText.text = "Question: \(questionCounter + 1) / \(numberOfQuestions)"
        self.categoryText.text = question.category
        
        self.questionText.text = question.question
        
        self.optionOneLabel.setTitle(question.answerOptions[0], for: .normal)
        self.optionTwoLabel.setTitle(question.answerOptions[1], for: .normal)
        self.optionThreeLabel.setTitle(question.answerOptions[2], for: .normal)
        self.optionFourLabel.setTitle(question.answerOptions[3], for: .normal)
    }
    
    //make initial set up -- display first question
    func initialSetUp() {
        setupQuestionUI(question: QuestionGenerator.questionManager.questions[0])
    }
    
    func showGameOverAlert() {
        let alert = UIAlertController(title: "Game Over", message: "Your Score: \(self.score) / \(numberOfQuestions)", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Restart", style: .default, handler: { _ in
            self.initialSetUp()
        }))
        
        alert.addAction(UIAlertAction(title: "Exit", style: .destructive, handler: { _ in
            //TODO: close application
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func moveToNextQuestion(){
        if(questionCounter == numberOfQuestions - 1){
            // reset question counter
            self.showGameOverAlert()
            self.questionCounter = 0
            self.score = 0
        } else {
            questionCounter += 1
            currentQuestion = QuestionGenerator.questionManager.questions[questionCounter]
            setupQuestionUI(question: currentQuestion)
        }
    }
    
    @IBAction func optionOneButtonPressed(_ sender: UIButton) {
        if(currentQuestion.isAnswerCorrect(sender.tag)){
            self.score += 1
        }
        self.moveToNextQuestion()
    }
    
    @IBAction func optionTwoButtonPressed(_ sender: UIButton) {
        if(currentQuestion.isAnswerCorrect(sender.tag)){
            self.score += 1
        }
        self.moveToNextQuestion()
    }
    
    @IBAction func optionThreeButtonPressed(_ sender: UIButton) {
        if(currentQuestion.isAnswerCorrect(sender.tag)){
            self.score += 1
        }
        self.moveToNextQuestion()
    }
    
    @IBAction func optionFourButtonPressed(_ sender: UIButton) {
        if(currentQuestion.isAnswerCorrect(sender.tag)){
            self.score += 1
        }
        self.moveToNextQuestion()
    }
    
}


