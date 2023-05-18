import Foundation

func listarInterface() {
    var opcao: Int = 0
    
    while opcao != 1 {
        print("Lista de Funcionários")
        print("------------------------------------------")
        
        listarFuncionario()
        
        print("\n")
        print("------------------------------------------")
        print("  1 - Voltar a tela principal")
        print("------------------------------------------")
        
        print("Digite a opção desejada:")
        if let input = readLine(), let opcaoSelecionada = Int(input) {
            opcao = opcaoSelecionada
            
            switch opcao {
            case 1:
                break
            default:
                print("Opção inválida. Digite novamente.")
            }
        } else {
            print("Opção inválida. Digite novamente.")
        }
    }
}
