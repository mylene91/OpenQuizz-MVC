//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Adresse {
    var voie: String
    var ville: String
    var pays: String
    var codePostal: String
    
    mutating func Afficher() {
        voie = "3 imp des canuts"
        ville = "corbas"
        pays = "France"
        codePostal = "69330"
    }
    
}

var monAdresse = Adresse(voie: "3 impasse", ville: "Lyon", pays: "France", codePostal: "6990")
print(monAdresse)

var monAdresse2 = Adresse(voie: "ef", ville: "kejfk", pays: "nnj", codePostal: "9999")
print(monAdresse2)


///// TYPES FONCTION ///

// je creer mes fonctions :

func ajouteDeux(x: Int) -> Int {
    return x + 2
}

func multiplieParTrois(x: Int) -> Int {
    return x * 3
}

func soustraitQuatre(x: Int) -> Int {
    return x - 4
}

func multiplieParDeux(x: Int) -> Int {
    return x * 2
}

// je déclare un tableau de fonctions :
var mesFonctions = [ajouteDeux(x: ), multiplieParTrois(x: ), soustraitQuatre(x: ), multiplieParDeux(x: )]

// je parcours mon tableau de fonctions :
var a = 2 // je déclare un entier
for maFonction in mesFonctions {
    a = maFonction(a) // il me demande de rentrer en paramète un Int
}
 a // va valloir 16 car la variable est passée par plusieurs étapes des fonctions dans le tableau











