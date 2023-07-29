import UIKit

//1 - Tener una url
//2 - crear una url session, Shared, es una instancia.
//3 - Asignar una tarea a la url session
//4 - Ejecutar la tarea

//https://jsonplaceholder.typicode.com/posts

func performRequest(){
    let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
    let urlSession = URLSession.shared
    let dataTask = urlSession.dataTask(with: url!) {data, response, error in
        print("Data \(String(describing: data))")
        print("response \(String(describing: response))")
        print("Error \(String(describing: error))")
        
    }
    dataTask.resume()
}

performRequest()
