import UIKit

func getFileURL(withName name: String, andExtension fileExtension: String) -> URL? {
    guard let jsonFileURL = Bundle.main.url(
        forResource: name,
        withExtension: fileExtension
    ) else {
        print("Could not locate file \(name).\(fileExtension)")
        return nil
    }
    return jsonFileURL
}

struct Post: Codable {
    var userId: Int
    var id: Int
    var title: String
    var body: String
}
/**
 
 var optional: Int?
 var optional2: Int?
 
 guard let nonOptionalValue = optional,
        let nonOptionalValue2 = optional2 else {
    // optional is nil
    return
 }
 
 // optional is not nil
 
 */



// Obtenemos url del archivo json
if let jsonURL = getFileURL(withName: "Post", andExtension: "json") {
    guard let jsonData = try? Data(contentsOf: jsonURL) else {
        fatalError("Could not gather data from file")
    }
    
    let jsonDecoder = JSONDecoder()
    
    guard let post = try? jsonDecoder.decode(Post.self, from: jsonData) else {
        fatalError("Could not parse data")
    }
    print(post)
    print(post.id)
    print(post.title)
    print(post.userId)
    print("-----")
}

struct Comment: Codable {
    
    enum CodingKeys: String, CodingKey {
        case postId = "post_Id"
        case id
        case name
        case body
        case email
    }
    
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
}

if let commentJSONURL = getFileURL(withName: "Comments", andExtension: "json") {
    guard let commentJSONData = try? Data(contentsOf: commentJSONURL) else {
        fatalError("Could not gather data")
    }
    let jsonDecoder = JSONDecoder()
    
    guard let comments = try? jsonDecoder.decode([Comment].self, from: commentJSONData) else {
        fatalError("Could not parse data")
    }
    
    print(comments)
    print("-----")
}

struct CommentsList: Codable {
    var commentList: [Comment]
}

if let commentJSONURL = getFileURL(withName: "CommentsList", andExtension: "json") {
    guard let commentJSONData = try? Data(contentsOf: commentJSONURL) else {
        fatalError("Could not gather data")
    }
    let jsonDecoder = JSONDecoder()
    
    guard let comments = try? jsonDecoder.decode(CommentsList.self, from: commentJSONData) else {
        fatalError("Could not parse data")
    }
    print(comments)
    print("-----")
}

let urlSession = URLSession.shared
guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
    fatalError("URL not valid")
}
/**
 let dataTask = urlSession.dataTask(with: url, completionHandler: { data, response, error in
    guard let data = data else { return }

 })
 */

let dataTask = urlSession.dataTask(with: url) { data, response, error in
    guard let data = data else { return }
    let jsonDecoder = JSONDecoder()
    guard let postList = try? jsonDecoder.decode([Post].self, from: data) else { return }
    print(postList[0])
}
dataTask.resume()
