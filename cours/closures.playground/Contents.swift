//: Playground - noun: a place where people can play

import UIKit

//// Closures (fonctions)

// les closures permettent d'utiliser une fonction sans l'avoir déclarée (et sans nom)

func multiplier (a: Int, b: Int) -> Int {
    return a * b
}

{ (a: Int, b: Int) -> Int in // { + paramètres et val de retours + in + corps de la func }
    return a * b
}

// faire des requêtes sur le réseau (attendre le retour des données)
// de manière plus générale : effectuer une action que l'on ignore à un moment précis : en prend une fermeture pour laisser à l'utilisateur la possibilité de choisir l'action qu'il veut réaliser
// pour l'animation

// quand la fermeture n'a pas de valeur de retour, on peut l'omettre donc enlever le -> ()

// EXO : Transformez les déclarations de fonctions suivantes en fermetures :

func ajouterDeux(a: Int) -> Int { (...) }
func additioner(a: Int, b: Int) -> Int { (...) }
func envoyerMail(message: String, destinataire: String) -> Bool { (...) }
func cocherLaCase(aCoché: Bool) { (...) }
func verrouiller() { (...) }
func composerNumero(_ numero: Int) { (...) }

{ (a: Int) -> Int in
}

{ (a: Int, b: Int) -> Int in
}

{ (message: String, destinataire: String) -> Bool in
}

{ (aCoché: Bool) in
}

{  // on peut mettre () -> Void
    
}

{ (numero: Int) in
}




