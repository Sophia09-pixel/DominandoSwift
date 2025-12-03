func soma(_ num1: Int,_ num2: Int) -> Int{
    var resultado = num1 + num2
    return resultado
}

var resultado = soma(5, 3)
print(resultado)


func verificaAdulto(_ idade: Int) -> Bool {
    return idade >= 18
}

verificaAdulto(20)
verificaAdulto(17)

var telefone: String?
telefone = "999999"
//força que esse valor existe (nao recomendado)
print(telefone!)
if telefone != nil {
    print(telefone!)
}
var celular: String?
celular = "888888"

if let telefone = telefone,
    let celular = celular {
        print(celular)
        print(telefone)
}

func autenticar(usuario: String?, senha: String?){
    guard let usuario = usuario, let senha = senha
    else {return}
    print(usuario)
    print(senha)
}

autenticar(usuario: "teste", senha: "123")
autenticar(usuario: "teste", senha: nil)

//pegar o primeiro caracter
if let primeiroCaracter = telefone?.first {
    print(primeiroCaracter)
}

print(telefone ?? "Não há valor para o telefone")

func loginUsuario(nome: String?) -> String {
    return nome ?? "Sem usuário informado"
}

print(loginUsuario(nome: "minguel"))

func valorTotalConta(total: Double, qtdPessoa: Int) -> Double {
    var porcentagemGarcom: Double = 10/100
    var totalConta = total  + (total * Double(porcentagemGarcom))
    return totalConta / Double(qtdPessoa)
}

print(valorTotalConta(total: 120, qtdPessoa: 4))

func primo(_ numero: Int) -> Bool {
    let start = 2
    for i in start..<numero{
        if numero % i == 0 {
            return false
        }
    }
    return true
}

primo(6)
primo(7)
