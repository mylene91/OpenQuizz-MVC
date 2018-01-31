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
