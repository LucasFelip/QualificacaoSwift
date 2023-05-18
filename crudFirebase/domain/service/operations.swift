import Foundation

var funcionarios: [String: Funcionario] = [:]

func cadastrar(nome: String, cargo: String, salario: Double) {
    if funcionarios[nome] != nil {
        print("Impossível cadastrar funcionário. Funcionário já cadastrado.")
    } else {
        funcionarios[nome] = Funcionario(nome: nome, cargo: cargo, salario: salario)
        print("Funcionário cadastrado!")
        salvarFuncionarios(funcionarios)
    }
}


func buscar(nome: String) -> Funcionario? {
    let funcionariosCarregados = carregarFuncionarios()
    return funcionariosCarregados[nome]
}


func remover(nome: String) {
    if let funcionario = funcionarios.removeValue(forKey: nome) {
        salvarFuncionarios(funcionarios)
        print("Funcionário \(funcionario.nome) excluído com sucesso.")
    } else {
        print("Funcionário não encontrado.")
    }
}


func atualizar(nome: String, novoCargo: String, novoSalario: Double) {
    if funcionarios[nome] != nil {
        funcionarios[nome] = Funcionario(nome: nome, cargo: novoCargo, salario: novoSalario)
        salvarFuncionarios(funcionarios) // Salvar o novo estado dos funcionários na persistência local
    } else {
        print("Funcionário não encontrado.")
    }
}

func listar() {
    funcionarios = carregarFuncionarios()
    
    guard !funcionarios.isEmpty else {
        print("Nenhum funcionário cadastrado.")
        return
    }
    
    for (_, funcionario) in funcionarios {
        exibirFuncionario(funcionario)
    }
}

func deletarTodosFuncionarios() {
    funcionarios = [:]
    salvarFuncionarios(funcionarios)
    print("Todos os funcionários foram excluídos.")
}

