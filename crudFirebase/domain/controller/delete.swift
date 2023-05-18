import Foundation

func excluirFuncionario() {
    print("Digite o nome do funcionário a ser excluído:")
    if let nome = readLine() {
        remover(nome: nome)
    } else {
        print("\nNome inválido.")
    }
}
