enum FormaDePagamento: String {
    case pix
    case boleto
    case saldoEmConta
}

enum ResultadoSaque {
    case sucesso(novoValor: Double)
    case falha(erro: String)
}

class Conta {
    var saldo = 0.0
    var nome: String
    
    //estatico
    static let taxaTransacao = 0.1
    
    //propiedade computada
    var negativado: Bool {
        return saldo < 0
    }
    
    func depositar(_ valor: Double){
        saldo += valor
    }
    
    func sacar (_ valor: Double) -> ResultadoSaque{
        
        if (valor > saldo){
            return.falha(erro: "Valor maior que saldo")
        } else {
            saldo -= valor
            return.sucesso(novoValor: saldo)
        }
        
    }
    
    func pagamentoCartao(_ tipoPagamento: FormaDePagamento){
        switch tipoPagamento {
        case .pix:
            print("Pagamento pix realizado com sucesso!")
        case .boleto:
            print("Pagamento boleto realizado com sucesso!")
        case .saldoEmConta:
            print("Pagamento realizado com sucesso!")
        }
    }
    
    init(nome: String){
        self.nome = nome
    }
}

//extender funcionalidades e metodos e usado para organizacao
extension Conta {
    func transferir(_ contaDestino: Conta, _ valor: Double){
        sacar(valor)
        contaDestino.depositar(valor)
    }
}

var contaSophia = Conta(nome: "Sophia")
contaSophia.pagamentoCartao(.pix)
contaSophia.depositar(100)
let resultado = contaSophia.sacar(50)

switch resultado {
    
case .sucesso(let novoValor):
    print("Saque realizado com sucesso, saldo de \(novoValor)")
case .falha( let erro):
    print("Saque falhou: \(erro)")
}

enum Mes: String {
    case janeiro , fevereiro, marco, abril, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)

var fevereiro: Mes = .fevereiro



var contaLivia = Conta(nome: "Livia")
contaSophia.transferir(contaLivia, 50)

print(contaSophia.saldo)
print(contaLivia.saldo)


func contaCaracteresString(_ texto: String) -> Int {
    return texto.count
}

let texto = "Sophia"
contaCaracteresString(texto)

extension String {
    func  contaCaracteresString() -> Int {
        return self.count
    }
}

print(texto.contaCaracteresString())

//conjunto de regras
//protocol Conta {
//    var saldo: Double { get set }
//    
//    func depositar(_ valor: Double)
//    func sacar (_ valor: Double)
//}

//class ContaCorrente: Conta{
//    var saldo: Double
//    
//    init() {
//        self.saldo = 0.0
//    }
//    
//    func depositar(_ valor: Double) {
//        saldo += valor
//    }
//    
//    func sacar(_ valor: Double) {
//        saldo -= valor
//    }
//    
//    
//    
//    
//}
//desafio

protocol Area {
    var area: Double { get }
}

class Quadrado: Area {
    var lado: Double
    
    var area: Double {
        return lado * lado
    }
    
    init(lado: Double) {
        self.lado = lado
    }
}


class Triangulo: Area {
    var base: Double
    var altura: Double
    var area: Double{
        return (base * altura) / 2
    }
    
    init(base: Double, altura: Double) {
        self.base = base
        self.altura = altura
    }
}


var quadrado = Quadrado(lado: 7)
print(quadrado.area)

var triangulo = Triangulo(base: 4, altura: 3)
print(triangulo.area)


enum Moeda: Int {
    case UmCentavo = 1
    case CincoCentavos = 5
    case DezCentavos = 10
    case VinteCincoCentavos = 25
    case CinquentaCentavos = 50
}

func contarMoedas (_ moedas: [Moeda]) -> Int {
    var soma = 0
    
    for valor in moedas {
        soma += valor.rawValue
    }
    
    return soma
}

let moedas: [Moeda] = [.CincoCentavos, .UmCentavo, .CincoCentavos, .VinteCincoCentavos, .CincoCentavos, .DezCentavos]

contarMoedas(moedas)
