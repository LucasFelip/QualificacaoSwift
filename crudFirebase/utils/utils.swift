import Foundation

func exibirFuncionario(_ funcionario: Funcionario) {
    print("Nome: \(funcionario.nome)")
    print("Cargo: \(funcionario.cargo)")
    print("Salário: \(funcionario.salario) \n")
}

func limparConsole() {
    sleep(UInt32(2))
    for _ in 1...100 {
        print("\n")
    }
}
