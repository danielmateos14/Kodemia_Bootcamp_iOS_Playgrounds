import UIKit

//Error handling
enum DivisionErrors: Error {
    case divisionEntreCero
    case stringNoEsNumero
}

//El guion bajo indica no es necesario escribir el nombre de la variable, el by es un label para hacer mas agradable a la vista de lectura se tiene que poner algo que haga referencia a lo que estas haciendo, throws sirva para manejar errores y avisa que puede fallar la funcion
func division(_ number1: String, by number2: String) throws -> Double {
    guard let number1 = Double(number1) else {
        throw DivisionErrors.stringNoEsNumero
    }
    
    guard let number2 = Double(number2) else {
        throw DivisionErrors.stringNoEsNumero
    }
    
    if number2 == 0 {
        throw DivisionErrors.divisionEntreCero
    }
    
    return number1 / number2
}

do { //Codigo que puede fallar
    let result = try division("10", by: ".")
    print(result)
} catch let error { //Manejo de errores
    print("Somenthing happened \(error)") //Error puede ser implicita en el try o no
}

do { //Codigo que puede fallar
    let result = try division("10", by: ".")
    print(result)
} catch { //Manejo de errores
    
    //El compilador provee por default una constante que contiene el error y siempre sera "error"
    print("Somenthing happened \(error)")
}


do { //Codigo que puede fallar
    let result = try division("10", by: ".")
    print(result)
} catch DivisionErrors.stringNoEsNumero { //manejo especifico de string is not number
    print("String is not number")
} catch DivisionErrors.divisionEntreCero {
    print("No se puede dividir entre zero")
}

guard let result = try? division("10", by: "AS") else {
    fatalError("Error")
}

print(result)
