import Foundation

print("Calcular la eficiendia del vehiculo")
let firstOdometer: Float = 38462
let secondOdometer: Float = 38810
print("Primer odometro \(firstOdometer) segundo Odometro \(secondOdometer)")

let gallons : Float = 11.2
print("Total de galones \(gallons)")

var mpg : Float = (secondOdometer-firstOdometer)/gallons

print("The mpg is: \((mpg*1000).rounded()/10)")





