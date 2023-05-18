import Foundation

func atualizarInterface() {
    var opcao: Int = 0
    
    while opcao != 2 {
        print("Atualizar Funcionário")
        print("------------------------------------------")
        
        atualizarFuncionario()
        
        print("\n")
        print("------------------------------------------")
        print("  1 - Atualizar outro funcionário")
        print("  2 - Voltar a tela principal")
        print("------------------------------------------")
        
        print("Digite a opção desejada:")
        if let input = readLine(), let opcaoSelecionada = Int(input) {
            opcao = opcaoSelecionada
            
            switch opcao {
            case 1:
                limparConsole()
            case 2:
                break
            default:
                print("Opção inválida. Digite novamente.")
            }
        } else {
            print("Opção inválida. Digite novamente.")
        }
    }
}
