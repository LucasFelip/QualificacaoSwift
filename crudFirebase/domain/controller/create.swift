import Foundation

func cadastrarFuncionario() {
    print("Nome:")
    let nome = readLine() ?? ""
    
    print("\nCargo:")
    let cargo = readLine() ?? ""
    
    print("\nSalário:")
    if let salarioString = readLine(), let salario = Double(salarioString) {
        cadastrar(nome: nome, cargo: cargo, salario: salario)
    } else {
        print("\nSalário inválido. O funcionário não foi cadastrado.")
    }
}
