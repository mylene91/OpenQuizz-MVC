//
//  ViewController.swift
//  OpenQuizz
//
//  Created by Pro on 23/01/2018.
//  Copyright © 2018 Mylene. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newGameButton: UIButton!
    
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBOutlet weak var questionView: QuestionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    // methode appellée à chaque fois que l'on tape sur le boutton -> action
    @IBAction func didTapNewGameButton() {
        startNewGame()
    }
    
    // -> logique
    private func startNewGame() {
        // affiche l'indicateur d'activité
        activityIndicator.isHidden = false
        // cacher le boutton
        newGameButton.isHidden = true
        
        // affiche une interface de chargement
        questionView.title = "Loading..."
        questionView.style = .standard
        
        scoreLabel.text = "0 / 10"
        // lance le chargement des questions
        // lorsque les questions sont chargées la partie peut démarrer
    }
    

}

