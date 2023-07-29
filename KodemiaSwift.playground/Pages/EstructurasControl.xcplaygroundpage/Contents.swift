import Foundation

//Es un if
let old: Bool = false
if  old {
    print("Variable verdadera")
} else {
    print("Variable falsa")
}

var age : Int = 17

if age < 18 {
    print("No puedes ingresar eres menor de edad")
} else {
    print("Adelante, bienvenido")
}

let numeroSubs : Int = 10000

if numeroSubs >= 1000 {
    print("Congratulations")
} else if numeroSubs < 5000 {
    print("Placa de Plata")
} else {
    print("Sigue intentando")
}

var dayOfTheWeek : String = "mon"

switch (dayOfTheWeek) {
case "Monday" :
    print("Monday")
    break
case  "Tuesday" :
    print("Tuesday")
    break
case  "Wednesday" :
    print("Wednesday")
    break
case  "Thursday" :
    print("Thursday")
    break
case  "Friday" :
    print("Friday")
    break
case "Saturday" :
    print("Saturday")
    break
case "Sunday" :
    print("Sunday")
    break
default:
    print("No existe ese dia")
}


//Ejercicios If
var miEdad : Int = 38

if miEdad < 18 {
    print("Soy un joven programador")
} else {
    print("Soy un viejo")
}
//Ejercicios Switch
var meses : String = "Abril"

switch (meses) {
case "Enero" :
    print("Estas en Enero")
    break
case  "Febrero" :
    print("Estas en Febrero")
    break
case  "Marzo" :
    print("Estas en Marzo")
    break
case  "Abril" :
    print("Estas en Abril")
    break
case  "Mayo" :
    print("Estas en Mayo")
    break
case "Junio" :
    print("Estas en Junio")
    break
case "Julio" :
    print("Estas en Julio")
    break
case "Agosto" :
    print("Estas en Agosto")
    break
case "Septiembre" :
    print("Estas en Septiembre")
    break
case "Octubre" :
    print("Estas en Octubre")
    break
case "Noviembre" :
    print("Estas en Noviembre")
    break
case "Diciembre" :
    print("Estas en Diciembre")
    break
default:
    print("No existe ese mes")
}

//Funciones

func sayHello() {
    print("Hola :)")
}

sayHello()

func sayMyName(name: String){
    print("My name is: \(name)")
}

sayMyName(name: "Daniel")


//Ejemplo con el guion en el parametro, quitando etiqueta de argumento

func sayMyLastName(_ lastName: String){ //Agregamos el guion antes de la variable, para que en la llamada se omita el nombre del parametro
    print("My name is: \(lastName)")
}

sayMyLastName("Mateos") //Omitiendo el nombre del parametro

func sayMyAge(_ name: String, _ age: Int) {
    print("Mi nombre es \(name), mi edad es \(age)")
}

sayMyAge("Daniel", 38)

//Funcion con valor de retorno

func sayHello2() -> String {
    let saludo = "Hola saludo de retorno"
    return saludo
}
print(sayHello2())
