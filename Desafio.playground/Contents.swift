var pontuacao = [
    "joaosilva": 20,
    "minguel": 30,
    "giovanna": 15
]
//Dicionario vazio
var pessoas: [String: Int] = [:]
pessoas.reserveCapacity(10) // pode adicionar 10 elementos

print(pontuacao["minguel"]!)
pontuacao.isEmpty
pessoas.count
pontuacao["sophia"] = 25
print(pontuacao)

pontuacao.updateValue(35, forKey: "sophia")
pontuacao.updateValue(40, forKey: "liviagaga")
print(pontuacao)

pontuacao["sophia"] = nil
pontuacao.removeValue(forKey: "liviagaga")
print(pontuacao)

for (nome, pontuacao) in pontuacao {
    print("o usuário \(nome) fez \(pontuacao)")
}

for nome in pontuacao.keys {
    print(nome)
}

for pontos in pontuacao.values {
    print(pontos)
}

// desafio

var notasLuis = [10.0, 8.0, 7.0, 9.5, 6.4]

func calculaMedia(notas: [Double]) -> Double{
    var media: Double = 0.0
    for nota in notas {
        media += nota / Double(notas.count)
    }
    return media
}
print("A nota do aluno é \(calculaMedia(notas: notasLuis))")


func exibeEstado(_: [String: String]){
    for estado in estados.values{
        if estado.count > 8 {
            print(estado)
        }
    }
}

let estados = ["SP": "São Paulo",
               "CE": "Ceará",
               "RJ": "Rio de Janeiro"]

exibeEstado(estados)
