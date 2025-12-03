var intervaloFechado = 10...20 // vai de 10 a 20
var intervaloSemiAberto = 10..<20 // vai de 10 a 19

var numero = 20

switch numero {
case 0...10:
    print("Numero está entre 0 e 10")
case 10...20:
    print("Numero está entre 10 e 20")
default:
    print("Número é maior do que 20")
}
var num1 = 19
num1 + 59
var animal  = "Cachorro"

switch animal {
    case "Cachorro", "Gato":
    print("Animal doméstico")
default:
    print("Animal não doméstico")
}

switch numero {
case _ where numero % 2 == 0:
    print("\(numero) é Par")
case _ where numero % 2 == 1:
    print("\(numero) é Ímpar")
default:
    break
}


var texto = "Eu Amo swfit"

for _ in 1...10 {
   print(texto)
}

var count = 11;
//verifica antes de executar
while count <= 10 {
    print(texto)
    count += 1;
}

//executa qualquer coisa e depois faz a verificação
repeat {
    print(texto)
} while count <= 10

var soma = 0

for i in 1...10 {
    soma += i
}

print(soma)


