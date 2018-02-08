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
    
    // @IBOutlet va notifier xcode pour lui indiquer que ces propriétés son susbetibles de faire une connexion avec une vue ans un interfacebuilder
    
    // connexion avec label
    @IBOutlet private var label: UILabel! // utiliser des optionnels car on ne connait pas les valeurs de ses propriétés -> on utilise par contre un optionnel déballé car on est sûrs que ça ne contiendra pas nil
    
    // connexion avec Icon
    @IBOutlet private var icon: UIImageView!
    /*
    // Only override draw() if you perform custom drawing. (permet de dessiner des vues de toutes formes)
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
