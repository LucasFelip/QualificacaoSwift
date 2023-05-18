import Foundation

func exibirMenu() {
    limparConsole()
    var opcao: Int = 0
    
    while opcao != 5 {
        print("Sistema gerenciamento de Funcionário")
        print("------------------------------------------")
        print("  1 - Cadastrar")
        print("  2 - Listar")
        print("  3 - Atualizar")
        print("  4 - Excluir")
        print("  5 - Sair")
        print("------------------------------------------")
        
        print("Digite a opção desejada:")
        if let input = readLine(), let opcaoSelecionada = Int(input) {
            opcao = opcaoSelecionada
          
            limparConsole()
            switch opcao {
            case 1:
                cadastroInterface()
            case 2:
                listarInterface()
            case 3:
                atualizarInterface()
            case 4:
                excluirInterface()
            case 5:
                print("Saindo...")
//            case 6:                           //
//                deletarTodosFuncionarios()    // Caso seja necessario deletar o banco de persistencia local
            default:
                print("Opção inválida. Digite novamente.")
            }
        } else {
            print("Opção inválida. Digite novamente.")
        }
      limparConsole()
    }
}

exibirMenu()
