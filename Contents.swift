//: Playground - noun: a place where people can play

import UIKit

//Comparacion ASCII
func compare(_ palabra1: String,_ palabra2: String) -> Bool {
    if (UnicodeScalar(String(palabra1.prefix(1)))!.value > UnicodeScalar(String(palabra2.prefix(1)))!.value ) {
        return true
    }
    return false
}

func findRotation(_ palabras: [String]) -> Int{
    var index = 0
    for i in stride(from: 0, to: palabras.count - 1, by: 1) {
        if compare(palabras[i].lowercased(), palabras[i+1].lowercased()) {
            index = i + 1
            break
        }
    }
    return index
}

var rotatedWords =  [
    "Pepe",
    "Retrógada",
    "Suplantar",
    "Uruguay",
    "Xonofobia",
    // "zurco",
    "Asíntota",
    "Barba",
    "Baquero",
    "Engendar",
    "Karla",
    "Oracion"
]

print(findRotation(rotatedWords))
