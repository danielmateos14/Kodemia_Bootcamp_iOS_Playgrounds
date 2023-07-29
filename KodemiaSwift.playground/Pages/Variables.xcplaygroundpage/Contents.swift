import UIKit

var edad: Int = 38

let miNombre:String = "Daniel"

var miLetraFavorita:Character = "L"

var vivo:Bool = true

var ubicacion:Float = 3232.3232

let miApellido: String = "Mateos"

let nombreCompleto = miNombre + " " + miApellido

var text2 = nombreCompleto + " " + String(edad)

var apellido2 : String?

apellido2 = nil

print("Variable nula \(apellido2 ?? "")")
