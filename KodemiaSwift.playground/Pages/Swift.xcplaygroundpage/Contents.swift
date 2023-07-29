//: [Previous](@previous)

import Foundation

var sanke_case_use = "Android"
var camelCase = "iOS"

//Comentarios
/*
 Comentario varias lineas
 */

 /*
  Operadores 3 tipos
  1- Unario
    -a
  2- Binario
    a + b
  3- Terciario
    a + b = 0
  */

var a : Int = -5
var b : Int = 10 * 4
var c : Int = a + b

print(c)


let dias : Int = 365
let horas : Int = 24
let seg : Int = 3600

print("Los segundos del año son:  = \(dias*horas*seg)")

let edadGato: Int = 2
let edadHumano: Int = 38
print("La edad de tu gato es: \(edadGato*edadHumano)")


let edadMinima = 17

if edadMinima < 18 {
    print("Eres menor \(edadMinima)")
} else {
    print("Eres mayor y tienes \(edadMinima)")
}
