import UIKit


class Animal {
    fileprivate var name: String
    var description: String
    var color: String
    var age: Int
    
    init(name: String, description: String, color: String, age:Int){
        self.name = name
        self.description = description
        self.color = color
        self.age = age
    }
    
    func eat() -> String {
        return ""
    }
    
    func makeNoise() -> String {
        return ""
    }
    
    func move() -> String {
        return ""
    }
    
    func animalData() {
        print("Name: \(name)")
        print("Description: \(description)")
        print("Color: \(color)")
        print("Age: \(age)")
    }
}

/*var tiger: Animal = Animal(name: "Toño", description: "is a bengal tiger", color: "orage", age: 4)
tiger.animalData()*/

class Carnivore: Animal {
    var hasFang: Bool
    
    init(name: String, description: String, color: String, age:Int, hasFang: Bool) {
        self.hasFang = hasFang
        super.init(name: name, description: description, color: color, age: age)
    }
    
    override func eat() -> String {
        return "meat"
    }
}
class ComePasto: Animal {
    var esGorda: Bool
    
    init(name: String, description: String, color: String, age:Int, hasFang: Bool, esGorda: Bool) {
        self.esGorda = esGorda
        super.init(name: name, description: description, color: color, age: age)
    }
    
    override func eat() -> String {
        return "Pasto"
    }
}
//class Omnivoro: Animal {
//
//    init(name: String, description: String, color: String, age:Int, hasFang: Bool, esGorda: Bool) {
//        self.esGorda = esGorda
//        super.init(name: name, description: description, color: color, age: age)
//    }
//
//    override func eat() -> String {
//        return "Carne y pasto"
//    }
//}



class Tiger: Carnivore {
    var animalSize: Float
    
    init(name: String, description: String, color: String, age: Int, hasFang: Bool, animalSize: Float) {
        self.animalSize = animalSize
        super.init(name: name, description: description, color: color, age: age, hasFang: hasFang)
    }
    
    override func makeNoise() -> String {
        return "-roar-"
    }
    
    override func move() -> String {
        return "fast"
    }
}

let tiger = Tiger(name: "Toño", description: "bengal tiger", color: "orange", age: 3, hasFang: true, animalSize: 15.5)
tiger.animalData()
print("This animal eats \(tiger.eat()), and makes a sound like \(tiger.makeNoise()), and it moves so \(tiger.move())")


class Vaca: ComePasto {
    var animalSize: Float
    
    init(name: String, description: String, color: String, age: Int, hasFang: Bool, animalSize: Float, esGorda: Bool) {
        self.animalSize = animalSize
        super.init(name: name, description: description, color: color, age: age, hasFang: hasFang, esGorda: esGorda)
    }
    
    func comePasto() -> String {
        return "Si come pasto"
    }
    override func makeNoise() -> String {
        return "-muuuuuu-"
    }
    
    override func move() -> String {
        return "Super Slow"
    }
}
print("************************************")
let vaca = Vaca(name: "Claudia", description: "Es lenta la vaca", color: "White", age: 5, hasFang: false, animalSize: 100, esGorda: true)
vaca.animalData()
print("This animal eats \(vaca.eat()), and makes a sound like \(vaca.makeNoise()), and it moves so \(vaca.move()), come pasto? \(vaca.comePasto())")


//class Oso: Omnivoro {
//
//    init(name: String, description: String, color: String, age: Int, hasFang: Bool, animalSize: Float, esGorda: Bool) {
//        self.animalSize = animalSize
//        super.init(name: name, description: description, color: color, age: age, hasFang: hasFang, esGorda: esGorda)
//    }
//
//    func comePasto() -> String {
//        return "Tambien"
//    }
//    override func makeNoise() -> String {
//        return "-Waaaaaarrrr-"
//    }
//
//    override func move() -> String {
//        return "Super Fast"
//    }
//
//}
//print("************************************")
//let oso = Oso(name: "Claudia", description: "Es lenta la vaca", color: "White", age: 5, hasFang: false, animalSize: 100, esGorda: true)
//vaca.animalData()
//print("This animal eats \(vaca.eat()), and makes a sound like \(vaca.makeNoise()), and it moves so \(vaca.move()), come pasto? \(vaca.comePasto())")







