import UIKit

//Closures

//Un closure que no tiene entradas y no regresa algo
var aClosure: () -> Void = {
    print("Declaramos y asignamos el valor")
}

// Un closure que regresa un entero
var aReturningClosure: () -> Int

//Closure qye recibe un entero
var aClosureWithInput: (Int) -> Void

//
aClosure = {
    print("This a empty closure")
}

aClosure()

//
aReturningClosure = {
    print("This is a clousure that returns a value")
    return 1
}

print(aReturningClosure())

//Cuando son closures con parametro de entrada se pone el nombre de una variable y se pone in
aClosureWithInput = { number in
    print(number)
}

aClosureWithInput(1)

var closureWitgMultipleInputs: (Int, String) -> Int = { number,word in
    print("Number: \(number) Word: \(word)")
    return 1
}

var anOptionalClosure: (()-> Void)? = {
    print("This is an optional closure")
}

anOptionalClosure?()

if let nonOptionalClosure = anOptionalClosure {
    nonOptionalClosure()
}

guard let nonOptionalGuardClosure = anOptionalClosure else {fatalError()}

func makeNetworkCall(inputParams: String, completion: () -> Void){
    print(inputParams)
    
    completion()
}

//Ejemplo closure
makeNetworkCall(inputParams: "https://www.kodemia.mx", completion: {
    print("Completion")
})

makeNetworkCall(inputParams: "https://www.kodemia.mx") {
    //Closure (completion)
    print("Another completion")
}

//Asincronamente, muchisimo despues ejecutaremos algo
func asyncronousWork(completion: @escaping () -> Void){
    DispatchQueue.global(qos: .userInitiated).async {
        //Todo en este codigo es asincrono
        completion()
    }
}


class NtwrokManager {
    var urlSession = URLSession.shared
    
    func performanceNerworkCall(){
        guard let url = URL(string: "http://jsonplaceholder.typecode.com/post")
        else {return}
        
        urlSession.dataTask(with: url) { [weak self] data, response, error in
            self?.finishRequest()
        }.resume()
    }
    
    func finishRequest() {
        
    }
}
