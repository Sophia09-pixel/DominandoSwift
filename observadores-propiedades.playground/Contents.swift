class Conta {
    var saldo = 0.0 {
        //observador (será disparado quando o valor for alterado)
        //newValue se nao estiver nomeado
        willSet(novoValor) {
            print("Saldo alterado para \(novoValor)")
        }
        //armazena o valor antigo
        didSet {
            print("Seu saldo era de \(oldValue)")
        }
    }
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
    
    func sacar (_ valor: Double){
        saldo -= valor
    }
    
    init(nome: String){
        self.nome = nome
    }
}

class ContaPouanca: Conta {
    var possuiCartaoDebito: Bool
    
    init(nome: String,possuiCartaoDebito: Bool) {
        self.possuiCartaoDebito = possuiCartaoDebito
        super.init(nome: nome)
    }
    func solicitarDebito(){
        possuiCartaoDebito = true
        print("Solicitação de cartao de débito")
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 10
    }
}

var contaPoup = ContaPouanca(nome: "Sophia", possuiCartaoDebito: false)
contaPoup.depositar(50)
contaPoup.sacar(20)
print(contaPoup.saldo)
contaPoup.solicitarDebito()

class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double){
        print("Solicitação de emprestimo no valor de \(valor)")
        super.depositar(valor)
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 5
    }
}

var contaCorrente = ContaCorrente(nome: "Lucas")
contaCorrente.depositar(100)
contaCorrente.sacar(20)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(20000)
print(contaCorrente.saldo)


func exibeSaldoDaConta(_ conta: Conta){
    if (conta is ContaCorrente){
        print("Conta é do tipo conta corrente")
    }
    
    if let contaCorrente = conta as? ContaCorrente{ // verifica se a conta é do tipo conta corrente
        contaCorrente.solicitarEmprestimo(200)
    }
    
    guard let contaPoupanca = conta as? ContaPouanca else {return}
    print(contaPoupanca.possuiCartaoDebito)
    
}

exibeSaldoDaConta(contaCorrente)
exibeSaldoDaConta(contaPoup)

var contaCorrenteSophia = Conta(nome: "Sophia")
contaCorrenteSophia.sacar(20)
print(contaCorrenteSophia.negativado)
contaCorrenteSophia.depositar(100)
print(contaCorrenteSophia.negativado)
print(Conta.taxaTransacao)


class Pessoa {
    var nome: String
    var idade: Int
    var altura: Double
    var peso: Double
    
    var imc: Double {
        return peso / (altura * peso)
    }
    
    var adulto: Bool {
        return idade > 18
    }
    
    init(nome: String, idade: Int, altura: Double, peso: Double) {
        self.nome = nome
        self.idade = idade
        self.altura = altura
        self.peso = peso
    }
}

var pessoa1 = Pessoa(nome: "Sophia", idade: 20, altura: 1.63, peso: 63)

print("é adulto: \(pessoa1.adulto)")
print("imc: \(pessoa1.imc)")


class Empregado {
    var nome: String
    var salario: Double {
        willSet{
            if(newValue > salario){
                print("Parabéns, vc recebu uma promoção")
            }else{
                if(newValue == salario){
                    print("Parece que nao houve uma promoção dessa vez")
                }
            }
        }
        
        didSet{
            if(salario < oldValue){
                print("O novo salário não pode ser menor que o anterior")
                salario = oldValue
            }
        }
    }
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
}

var employee1 = Empregado(nome: "Minguel", salario: 15000)
employee1.salario = 15000
employee1.salario = 16000
employee1.salario = 15000
print(employee1.salario)
