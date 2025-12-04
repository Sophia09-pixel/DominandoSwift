//Arrays
var notas: [Double] = [10.0, 8.5, 7.2, 6.0]
var arrayVazio = Array<Int>()
var arrayVazio2: [Int] = []

notas.isEmpty
arrayVazio.isEmpty

notas.count
notas.min()
notas.max()

notas.contains(8.5)
notas.firstIndex(of: 8.5)

notas.append(9.0)
notas.insert(5.0, at: 2)
notas += [8.2]
print(notas)

notas.removeLast()
notas.removeFirst()
notas.remove(at: 2)
print(notas)

for nota in notas {
    print(nota)
}

for i in 0..<notas.count { // deve ser  intervalo semi aberto de 0 até 3
    let nota = notas[i]
    print("Nota \(i): \(nota)")
}

for (index, elemento) in notas.enumerated() {
    print("Nota \(index): \(elemento)")
}
//Set
//tipo de dado nao ordenado, não possuem index
//Não permite dados duplicados
var nomesSets: Set<String> = ["Sophia", "Giovanna", "João"]
nomesSets.contains("Sophia")
nomesSets.insert("Livia")
nomesSets.remove("João")

//Tuplas
//pode ser tipos diferentes
typealias Coordenadas = (x: Int, y: Double, z: Double)
var coordenadas: Coordenadas = (x: 5, y: 3.5, z: 8.0)
coordenadas.x
coordenadas.y
coordenadas.z

var pessoa = (nome: "Maria", idade: 30)

pessoa.nome
pessoa.idade
//_ ignora a variavel
var (_, idade) = pessoa
