import Foundation

// Estructura de datos: Esqueleto que nos muestra informacion, formas de representar la informacion
//Forma en la que organizamos la informacion, facilitar su procesamiento que pueda ser legible coon un algoritmo especifico

//Parsear: Hacer legibles los datos, pueden estar en un json, analizar una cadena de texto e indentificar como se compone
// Tipos de datos: Array, string, boolean, int, floar, double

//Objetivo: hacer el modelado de datos, crear una estructura de datos con informacion contendia en un json, hacer una peticion con urlsessions

// 1. Obtener URL, analizar, identificar tipos de datos
// 2. Crear una Struct
// Nota: los nombres de las variables del struct deben coincidir con los campos JSON
// 3. Conformar nuestro struct con el protocolo Codable
// 4. Hacer la peticion

// UrlSession
// 1. Tener una url
// 2. Crear la UrlSession.Shared
// 3. Asignamos una tarea
// 4. Usar JSONDecoder() / usar nuestra estructura de datos
// 5. Ejecutar la tarea
// https://dummyjson.com/todos

//Crear la Struct de Dummy que dentro contendra una variable todos que a su ves es una Struct con el objeto todos
struct Dummy: Codable {
    let todos: [Todos]
    let total: Int
}
struct Todos: Codable {
    let id: Int
    let todo: String
    let completed: Bool
    let userId: Int
}

//Crear la url segura
guard let url = URL(string: "https://dummyjson.com/todos") else {
    fatalError("URL no valida")
}

//Instancia urlsessions con el singleton
let urlSessions = URLSession.shared

//Creacion de la tarea con el closure asincrono
let dataTask = urlSessions.dataTask(with: url){ data, response, error in
    //Creamos una data segura
    guard let data = data else {
        fatalError("Error en la data")
    }
    //Instancia de jsondecoder
    let jsonDecoder = JSONDecoder()
    
    //Variable segura con el json decodificado
    guard let dummy =  try? jsonDecoder.decode(Dummy.self, from: data) else {
        fatalError("No se puede decodificar el json")
    }
    print("Total de elementos del json -> \(dummy.total)")
    print("Datos decodificados -> \(dummy.todos[0])")
    print("Datos decodificados -> id: \(dummy.todos[1].id)")
    print("Datos decodificados -> todo: \(dummy.todos[1].todo)")
    print("Datos decodificados -> completed: \(dummy.todos[1].completed)")
    print("Datos decodificados -> userId: \(dummy.todos[1].userId)")
}
dataTask.resume() //Iniciare tarea
