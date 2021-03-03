import UIKit

var str = "Hello, playground"

// 1 - Insira o código abaixo que formate o valor para 2 casas após a vígulas
var value = 10.124
var newValue = String(format: "%.2f", value)
print(newValue)

// 2 - Como eu apresento para o Usuário a seguinte frase: O ano atual é 2021? Utilizando interpolação?
let str1 = "O ano atual é"
let year = 2021
print(str1, year)

// 3 - Existe um problema para o código abaixo? Se sim qual seria ele?
let complementAddress = Int()
//print(complementAddress)


// 4 - Defina um valor para a váriavel complementAddress e imprima ela de forma segura, caso seu valor for nulo imprima: "Não existe endereço complementar"

if complementAddress > 0{
  print(complementAddress)
}else{
  print("Não existe endereço complementar")
}

// 5 - Faça uma ternária que verifique se a nota é maior que 7 caso afimativo imprima: "Aprovado" caso contrário "Em exame".
let nota = 6.98

var notaResult = (nota >= 7.0 ) ? "Aprovado" : "Em Exame"
print(notaResult)

//6 - Verifique a validade de uma senha fornecida pelo usuário. A senha válida é o número 1234. Devem ser impressas as seguintes mensagens: ACESSO PERMITIDO caso a senha seja válida. ACESSO NEGADO caso a senha seja inválida.

func login (password: Int) -> String{
  if password == 1234{
    return "ACESSO PERMITIDO"
  }else{
    return "ACESSO NEGADO"
  }
}
let passoword = 2314
print(login(password: 2314))


//7 - Dadas medidas dos lados de um triângulo e escreva se ele é Equilátero, Isósceles ou Escaleno. Sendo que:
    //− Triângulo Equilátero: possui os 3 lados iguais.
    //− Triângulo Isóscele: possui 2 lados iguais.
    //− Triângulo Escaleno: possui 3 lados diferentes.
let l1 = 10
let l2 = 10
let l3 = 12

if (l1 == l2) && (l1 == l3){
    print("Triângulo Equilátero")
}else if (l1 == l2) || (l1 == l3) || (l2 == l3){
    print("triângulo Isóceles")
}else{
    print("Escaleno")
}



//8 - Percorra todo o array adicionando a string Nome: em cada elemento
let names = ["João","Maria","José","Matheus"]

for nome in names{
    print(nome)
}

//9 - Percorra o array e exiba o maior valor, verifique se o array é vazio caso afirmativo exiba na tela a mensagem: "Array vazio"

//let array = [1,10,23,50,2]
var array = [1,10,23,50,2]
var maxNumber = 0

if array.isEmpty{
    print("Array Vazio")
}
for number in array{
    if number > maxNumber{
        maxNumber = number
    }
}
print(maxNumber)

//10 - Imprima o primeiro elemento do array do exercicio anterior, verifique se o valor é nulo
print((array.first)!)

//11 - Adicione um elemento no array e imprima o último valor inserido
array.insert(22, at: 5)
print((array.last)!)

//12 - Crie uma struct com o modelo do carro e seu ano, após isso crie um carro com o modelo Ferrari e ano 2020
struct Car {
    var model: String
    var year: Int
}
let ferrari = Car(model: "ferrari", year: 2020)
print(ferrari.model)
print(ferrari.year)

//13 - Crie outra struct que receba um peso em Kg e tenha uma propriedade computada que retorne o peso em gramas. Crie um peso com 10Kg e imprima os 2 atributos em Kg e grama
struct Peso {
    var weightkg: Double
    var gproperty: Double {
        return weightkg * 1000
}
}
let pesoT = Peso(weightkg: 10)
print(pesoT.weightkg, pesoT.gproperty)


//14 - Crie uma função que imprima a seguinte frase: "Essa é minha primeira função"
func phrase (_ message: String ) -> String{
    return message
}
let ex = phrase("Essa é minha primeira função")
print(ex)

//15 - Crie uma função que receba 2 valores Inteiros como parâmetro e imprima a multiplicação entre eles
func multiply (_ value1: Double, _ value2: Double) -> Double{
    return value1 * value2
}
print(multiply(10, 25))

//17 - Utilizando map concatene a string Nome: em cada elemento, e imprima o array
import Foundation
let names2 = ["João","Maria","José","Matheus"]
 
let conc = names2.map({"nome:\($0)"})
print(conc)


//18 - Utilizando filter retorne todo os nomes que iniciem com a letra M

let filtM = names2.filter({$0.contains("M")})
print(filtM)
