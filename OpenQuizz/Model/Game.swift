//
//  Game.swift
//  OpenQuizz
//
//  Created by Mylène G on 29/01/2018.
//  Copyright © 2018 Mylene. All rights reserved.
//

import Foundation

class Game {
    var score = 0
    
    private var questions = [Question]()
    private var currentIndex = 0
    
    var state: State = .ongoing
    
    enum State {
        case ongoing, over
    }
    
    var currentQuestion: Question {
        return questions[currentIndex]
    }
    
    // permet de remettre à 0 les parametres de la partie, charger les questions et relancerx la partie 
    func refresh() {
        score = 0
        currentIndex = 0
        state = .over
        
        QuestionManager.shared.get(completionHandler: receiveQuestions(_:)) // shared = instance unique de QuestionManager puis appel de la func get : passer en paramètre la private func receiveQuestions : lorsque les questions sont chargées c'est la fonction reveiveQuestions qui va être appellée avec en paramètre les questions reçues
    }
    
    // fonction privée qui va gérer les questions reçues :
    private func receiveQuestions(_ questions: [Question]) { // prend en valeur tableau de question qui ne renvoie rien
        print(questions)// print question pour verifier si ça fonctionne
        self.questions = questions
        state = .ongoing // <- .ongoing : partie prête à démarrer
    }
    
    func answerCurrentQuestion(with answer: Bool) {
        if (currentQuestion.isCorrect && answer) || (!currentQuestion.isCorrect && !answer) {
            score += 1
        }
        goToNextQuestion()
    }
    
    private func goToNextQuestion() {
        if currentIndex < questions.count - 1 {
            currentIndex += 1
        } else {
            finishGame()
        }
    }
    
    private func finishGame() {
        state = .over
    }
}
