print("*************** Calculo de bmi y bmr *********************")

//Funcion que pide datos del usuario
func usuario(nombre: String, peso: Float, edad: Int, altura: Float, genero: String){
    conversionPeso(peso: peso)//Convertimos peso
    conversionAltura(altura: altura) //Convertimos altura
    print("Hola \(nombre)\nTu edad es: \(edad)\nTu genero es: \(genero)\nEl calculo de tu BMI es: \(bmi(peso: peso, altura: altura))\nY el de tu BMR es: \(bmr(peso: peso, altura: altura, genero: genero, edad: edad))") //Imprimimos los datos del usuario y concatenamos las funciones que hacen el bmi y bmr
}

//Funcion que convierte el peso
func conversionPeso(peso: Float) -> Float {
    return peso * 0.453
}

//Funcion que convierte la altura
func conversionAltura(altura: Float) -> Float {
    return altura * 2.54
}

//Funcion que calcula el bmi
func bmi(peso: Float, altura: Float) -> Float {
    return (((10000 * conversionPeso(peso: peso))/(conversionAltura(altura: altura)*conversionAltura(altura: altura)))*10).rounded()/10
}

//Funcion que calcula el bmr dependiedo si es mujer o es hombre
func bmr(peso: Float, altura: Float, genero: String, edad: Int) -> Float {
    var resultado: Float
    if genero == "Mujer"{
        resultado = (447.593+(9.247*conversionPeso(peso: peso))+(3.098*conversionAltura(altura: altura))-(4.330*Float(edad))).rounded()
    } else {
        resultado = (88.362+(13.397*conversionPeso(peso: peso))+(4.799*conversionAltura(altura: altura))-(5.677*Float(edad))).rounded()
    }
    return resultado
}

//llamada a la funcion usuario
usuario(nombre: "Adrian", peso: 145, edad: 17, altura: 58, genero: "hombre")
