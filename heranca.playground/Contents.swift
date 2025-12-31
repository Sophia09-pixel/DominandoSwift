class Conta {
    var saldo = 0.0
    var nome: String
    
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
    var possuiCartaoDebito = false
    
    func solicitarDebito(){
        possuiCartaoDebito = true
        print("Solicitação de cartao de débito")
    }
}

var contaPoup = ContaPouanca(nome: "Sophia")
contaPoup.depositar(50)
print(contaPoup.saldo)
contaPoup.solicitarDebito()

class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double){
        print("Solicitação de emprestimo no valor de \(valor)")
    }
}

var contaCorrente = ContaCorrente(nome: "Lucas")
contaCorrente.depositar(100)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(20000)
