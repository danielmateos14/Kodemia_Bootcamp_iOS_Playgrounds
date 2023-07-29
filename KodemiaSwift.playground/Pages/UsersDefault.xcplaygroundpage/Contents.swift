import UIKit

//UsersDefault

// 1. Llamar a la clase
// 2. Agregar la instancia standar
// 3. Settear los datos
// 4. Identificar el tipo de dato

let userDefaults = UserDefaults.standard
//
//userDefaults.set("Daniel", forKey: "name")
//
//print(userDefaults.string(forKey: "name"))
//
//userDefaults.set(1, forKey: "number")
//
//print(userDefaults.string(forKey: "number"))
//
//userDefaults.removeObject(forKey: "number")
//
//print(userDefaults.string(forKey: "number"))
//
//userDefaults.set(Date(), forKey: "CurrentDate")
//print(userDefaults.object(forKey: "CurrentDate"))
//
//let movies = ["Guerra mundial z", "El exorcista", "Barbie"]
//userDefaults.set(movies, forKey: "ScaryMovies")
//
//print(userDefaults.object(forKey: "ScaryMovies"))


// Como guardar las preferencias de un usuario con UsersDefault

// 1. Modelo de datos - Struct
// 2. Colocar la informacion del usauario
// 3. COnfigurar la informaxcion como un json usando jsonecncoder
// 4. Decodificamos JsonDecoder()

struct User: Codable {
    var name: String
    var email: String
    var age: Int
    var favoriteMovie: String
}

let usuario = User(name: "Arepa",
                   email: "arepa@gmail.com",
                   age: 2,
                   favoriteMovie: "Terminator")

//let userDefaults = userDefaults.standard
//Codificamos la informacxion para convertila en un objeto Json
let encoder = JSONEncoder()
if let datosEncodificados = try? encoder.encode(usuario) {
    userDefaults.setValue(datosEncodificados, forKey: "SavedUserConfig")
}

//Para hacer legible lo que guardamos en UserDefault hay que decodificarlo usando JSONDecoder()
if let savedUserConfig = userDefaults.object(forKey: "SavedUserConfig") as? Data {
    let decoder = JSONDecoder()
    if let loadedUserConfig = try? decoder.decode(User.self, from: savedUserConfig) {
        print(loadedUserConfig.name)
    }
}


