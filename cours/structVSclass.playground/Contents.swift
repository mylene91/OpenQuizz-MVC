//: Playground - noun: a place where people can play

import UIKit

///////// STRUCTURES /////////

// classe = référence
class RectangleClass {
    var hauteur = 0
    var largeur = 0
    
    init(largeur: Int, hauteur: Int){
        self.largeur = largeur
        self.hauteur = hauteur
    }
    
}

// structure = valeur
struct RectangleStruct { // sont équipées d'un initialiseur par défaut qui prend en paramètre les propriétés stockées
    var hauteur: Int
    var largeur: Int
    
    mutating func doublerLaTaille() { // si je veux créer une fonction qui double la taille de mon rectangle : mutating = la fonction a le droit de modifier les propriétés de la struct
        hauteur *= 2
        largeur *= 2
    }
    
    
    // les initialiseurs non obligatoires
    //    init(largeur: Int, hauteur: Int){
    //        self.largeur = largeur
    //        self.hauteur = hauteur
    //    }
    
}

// type par valeur si je modifie s2, s1 ne sera pas affecté puisqu'il n'ira pas chercher la référence de s2 :)
var s1 = RectangleStruct(hauteur: 5, largeur: 10)
var s2 = s1 // s2 sera une copie de s1
s2.hauteur = 8 //si je modifie s2, s1 ne sera pas affecté puisqu'il n'ira pas chercher la référence de s2 :)

s1.hauteur
s2.hauteur

// type par référence !! Si je modifie c2 je modifie aussi sa référence donc ça ne sera pas une copie
var c1 = RectangleClass(largeur: 10, hauteur: 5)
var c2 = c1
c2.hauteur = 8

c1.hauteur
c2.hauteur

// mutabilité des instances constantes




var s = RectangleStruct(hauteur: 5, largeur: 10)

