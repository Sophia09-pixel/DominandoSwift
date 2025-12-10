//Tipos de dados complexos com atributos e metodos
//paradigma orientado a objetos
struct ContaCorrenteStruct {
    var saldo = 0.0
    var nome: String
    
    
    mutating func sacar(_ valor: Double){
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double){
        saldo += valor
    }
}
//não pode alterar o valor de uma struct quando é constante
var contaCorrenteSophiaStruct = ContaCorrenteStruct(nome: "Sophia")
print(contaCorrenteSophiaStruct.saldo)

print(contaCorrenteSophiaStruct.saldo)
//Não influenciou em nada, os valores para cada são diferentes
//Valor (recebe uma cópia)
var contaCorrenteLucasSctruct = contaCorrenteSophiaStruct
contaCorrenteSophiaStruct.depositar(100)
contaCorrenteLucasSctruct.depositar(50)
print("saldo sophia :\(contaCorrenteSophiaStruct.saldo)")
print("saldo lucas :\(contaCorrenteLucasSctruct.saldo)")


contaCorrenteLucasSctruct.sacar(100)
print(contaCorrenteLucasSctruct.saldo)

class ContaCorrente {
    var saldo: Double
    var nome: String
    
    //construtor
    init(nome: String) {
        self.saldo = 0.0
        self.nome = nome
    }
    
     func sacar(_ valor: Double){
        saldo -= valor
    }
    
     func depositar(_ valor: Double){
        saldo += valor
    }
}

var contaCorrenteSophia = ContaCorrente(nome: "Sophia")

var contaCorrenteLucas = contaCorrenteSophia
contaCorrenteSophia.depositar(60)
contaCorrenteLucas.depositar(100)
//Referencia (Mesmos objetos, mesma referencia na memoria)
print("\(contaCorrenteSophia.saldo)")
print("\(contaCorrenteLucas.saldo)")


//Diferenças struct e classe
//Classe é um tipo de referencia e struct um tipo de valor

//Desafio

class Calculadora{
    var num1: Double
    var num2: Double
    
    init(_ valor1: Double, _ valor2: Double){
        self.num1 = valor1
        self.num2 = valor2
    }
    
    func soma(_ valor1: Double, _ valor2: Double) -> Double{
        return valor1 + valor2
    }
    
    func subtracao(_ valor1: Double, _ valor2: Double) -> Double{
        return valor1 - valor2
    }
    
    func divisao(_ valor1: Double, _ valor2: Double) -> Double{
        return valor2 == 0 ? 0 : valor1 / valor2
    }
    
    func Multiplicacao(_ valor1: Double, _ valor2: Double) -> Double{
        return valor1 * valor2
    }
}

var calculos = Calculadora(6, 4)

print("Soma: \(calculos.soma(calculos.num1, calculos.num2))")
print("subtracao: \(calculos.subtracao(calculos.num1, calculos.num2))")
print("Divisao: \(calculos.divisao(calculos.num1, calculos.num2))")
print("Multiplicacao: \(calculos.Multiplicacao(calculos.num1, calculos.num2))")

class Restaurante{
    var nome: String
    var tipoComida: String
    var numPedidos: Int
    
    init(nome: String, tipoComida: String) {
        self.nome = nome
        self.tipoComida = tipoComida
        self.numPedidos = 0
    }
    
    func recebePedido(){
        numPedidos += 1
    }
    
    //valor fixo de 35
    func valorTotalPedidos() -> Double{
        return 35 * Double(self.numPedidos)
    }
}

var restaurante = Restaurante(nome: "Speranza", tipoComida: "Italiana")

restaurante.recebePedido()
restaurante.recebePedido()
print("valor total Pedido: \(restaurante.valorTotalPedidos())")

