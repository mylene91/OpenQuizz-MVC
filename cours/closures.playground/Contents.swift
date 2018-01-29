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

