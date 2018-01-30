//: Playground - noun: a place where people can play

import UIKit




///// TYPES FONCTION ///

// je creer mes types fonctions :

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

// je déclare un tableau de type fonctions :
var mesFonctions = [ajouteDeux(x: ), multiplieParTrois(x: ), soustraitQuatre(x: ), multiplieParDeux(x: )]

// je parcours mon tableau de types fonctions :
var a = 2 // je déclare un entier
for maFonction in mesFonctions {
    a = maFonction(a) // il me demande de rentrer en paramète un Int
}
 a // va valloir 16 car la variable est passée par plusieurs étapes des fonctions dans le tableau



/********** EXERCICE ************/
 
// RAPPEL -----------------------------------------

func ajouterDeux(a: Int) -> Int { (...) } // (Int) -> Int renvoie un entier
func additioner(a: Int, b: Int) -> Int { (...) } // (Int, Int) -> Int
func envoyerMail(message: String, destinataire: String) -> Bool { (...) } // (String, String) -> Bool
func cocherLaCase(aCoché: Bool) { (...) } // (Bool) -> (Bool) ou Void -> ()
func verrouiller() { (...) } // () -> () ou () -> Void
func composerNumero(_ numero: Int) { (...) } // (Int) -> () ou (Int) -> Void

// Si la fonction n'a pas de valeur de retour ou pas de paramètre, on laisse des parenthèses vides (ou le mot-clé Void pour la valeur de retour).

// Fin RAPPEL -------------------------------------


/* Dans cet exercice, on cherche à calculer la somme d'un tableau d'entier selon les règles suivantes :

si le nombre est pair, on le divise par deux avant de l'additionner aux autres
si le nombre est impair, on ajoute un puis on le divise par deux avant de l'additioner aux autres

Vous devez compléter la fonction obtenirDivision. Cette fonction renvoie une des deux fonctions au
dessus en fonction de la parité de son paramètre x. Vous noterez que le type de retour de cette
fonction corresponds bien au type des deux fonctions du dessus. Ensuite, vous devez utiliser la
fonction obtenirDivision pour compléter la boucle */

func diviserNombrePairParDeux(x: Int) -> Int {
    return x / 2
}

func diviserNombreImpairParDeux(x: Int) -> Int {
    return (x + 1) / 2
}

// renvoie une des deux fonctions au dessus (si c'est entier ou non)
func obtenirDivision(x: Int) -> (Int) -> (Int) {
    if (x % 2 == 0) {//si paramètre x est égal à un entier (modulo 2 = pair)
       return diviserNombrePairParDeux(x: ) // pas de paramètre car il va prendre celui du tableau
    } else { // sinon renvoi à la fonction pour les nombres impairs
        return diviserNombreImpairParDeux(x: )
    }
}

let tableau = [2, 12, 3, 14, 76, 19, 7, 22]
var somme = 0
var nouveauTableau : [Int] = []


for nombre in tableau {
    let laDivision = obtenirDivision(x: nombre)
    laDivision(nombre)
    somme += laDivision(nombre)
    
}









