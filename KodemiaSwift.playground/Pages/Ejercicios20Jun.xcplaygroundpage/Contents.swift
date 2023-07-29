import Foundation


func numeroPar(numero: [Int]){
    for i in numero {
        if i%2 == 0 {
            print("El numero \(i) es par")
        } else {
            print("El numero \(i) es impar")
        }
    }
}

func funcionConOperadorTernario(numero: [Int]){
    for i in numero {
        print (i % 2 == 0 ? "El numero \(i) es par" : "El numero \(i) es impar")
    }
}

numeroPar(numero: [34, 25, 44])
print("************")
funcionConOperadorTernario(numero: [12,12,15])


//Switch Ejercicios
print("*********************")
func letradeGrados(grado: Int){
    print("Funcion Grados")
    switch (grado){
    case 0...59:
        print("letra grado F - grados 0.0")
        break
    case 60...69:
        print("letra grado D - grados 1.0")
        break
    case 70...79:
        print("letra grado C - grados 2.0")
        break
    case 80...89:
        print("letra grado B - grados 3.0")
        break
    case 90...100:
        print("letra grado A - grados 4.0")
        break
    default:
        print("Grados incorrectos")
    }
}

letradeGrados(grado: 300)
print("*********************")
print("Repeat While")

var num: Int = 0
print("Ejemplo de contador hasta 5 con repeat while")
repeat {
    print("El numero es \(num)")
    num += 1
} while( num <= 5)

print("*********************")
print("While")

var num2: Int = 1
print("Impresion de niveles con While")
while num2 <= 5 {
    
    print("Tu nivel es \(num2)")
    num2 += 1
}
print("Fin")
