import Foundation

func atualizarFuncionario() {
    print("Digite o nome do funcionário a ser atualizado:")
    let nome = readLine() ?? ""
    
    if buscar(nome: nome) != nil {
        print("\nNovo Cargo:")
        let cargo = readLine() ?? ""
        
        print("\nNovo Salário:")
        if let salarioString = readLine(), let salario = Double(salarioString) {
            atualizar(nome: nome, novoCargo: cargo, novoSalario: salario)
        } else {
            print("\nSalário inválido. O funcionário não foi cadastrado.")
        }
    } else {
        print("Funcionário não encontrado.")
    }
}
