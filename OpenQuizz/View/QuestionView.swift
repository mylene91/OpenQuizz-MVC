//
//  QuestionView.swift
//  OpenQuizz
//
//  Created by Mylène Greneron on 08/02/2018.
//  Copyright © 2018 Mylene. All rights reserved.
//

import UIKit

// simplifier l'utilisation de la vue
class QuestionView: UIView {
    
    // @IBOutlet va notifier xcode pour lui indiquer que ces propriétés son susceptibles de faire une connexion avec une vue ans un interfacebuilder
    
    // connexion avec label
    @IBOutlet private var label: UILabel! // utiliser des optionnels car on ne connait pas les valeurs de ses propriétés -> on utilise par contre un optionnel déballé car on est sûrs que ça ne contiendra pas nil
    
    // connexion avec Icon
    @IBOutlet private var icon: UIImageView!
    
    
    // enum Style qui va définir l'apparence générale de la vue. Trois possibilités : réponse correcte, réponse incorrecte et pas de réponse
    enum Style {
        case correct, incorrect, standard
    }
    
    var title = "" {
        didSet {
            label.text = title
        }
    }
    
    // style de type Style initilisé à standard
    var style: Style = .standard {
        didSet {
            setStyle(style)
        }
    }
    
    private func setStyle(_ style: Style) {
        switch style {
        // met l'image en vert avec l'icone correct et je laisse affiché
        case .correct:
            backgroundColor = UIColor(red: 200/255.0, green: 236/255.0, blue: 160/255.0, alpha: 1)
            icon.image = UIImage(named: "Icon Correct")
            icon.isHidden = false
        
        // incorrect met l'image en rose et affiche l'image incorrect
        case .incorrect:
            backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
            icon.image = #imageLiteral(resourceName: "Icon Error")
            icon.isHidden = false
        
        // met le fond en gris et cache l'image
        case .standard:
            backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            icon.isHidden = true
            
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    /*
    // Only override draw() if you perform custom drawing. (permet de dessiner des vues de toutes formes)
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
