//: Playground - noun: a place where people can play

import UIKit

var rotatedWords =  [
    "Pepe",
    "Retrógada",
    "Suplantar",
    "Uruguay",
    "Xonofobia",
    //"Zurco",
    "Asíntota",
    "Barba",
    "Baquero",
    "Engendar",
    "Karla",
    "Oracion"
]

func Comparacion(_ palabra1: String,_ palabra2: String) -> Bool {
    
    if (UnicodeScalar(String(palabra1.prefix(1)))!.value > UnicodeScalar(String(palabra2.prefix(1)))!.value )
    {
        return true
    }
    
    return false
}

func Rotacion(_ palabras: [String]) -> Int{
    
    var index = 0
    
    for i in stride(from: 0, to: palabras.count - 1, by: 1) {
        
        if Comparacion(palabras[i].lowercased(), palabras[i+1].lowercased())
        {
            index = i + 1
            break
        }
    }
    return index
}

print(Rotacion(rotatedWords))
