//: Playground - noun: a place where people can play

import UIKit

import Foundation

// Notifications : du frameworks foundation

// notification.Name (id, son émission)
// notification
// notificationCenter (emettre et recevoir les notifications)


// (on peut créer nos vues dans l'interface builder mais des fois on va devoir rentrer dans le code avec UIView : Si on veut controler la hiérarchie des vues dans le code on utilisera :

// Propriétés :
var superview: UIView // permet d'accéder à la vue parente
var subviews: [UIView] // permet d'accéder au tableau des sous vues qui sont contenues à l'intérieur -> attention, l'ordre importe : les vues qui sont à la fin du tableau sont au dessus de la pile (visuellement)

// par exemple je veux ajouter un bouton : ajouter un
// Méthodes :
func addSubview(_view: UIView)
// ex : je veux ajouter un bouton dans une sous vue (myView serait ma vue)
myView.addSubview(mybutton)

// ex : je veux retirer le bouton de la sous vue :
func removeFromSuperview()
myButton.removeFromSuperview()
