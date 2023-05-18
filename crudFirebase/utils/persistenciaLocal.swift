import Foundation

func salvarFuncionarios(_ funcionarios: [String: Funcionario]) {
    let encoder = JSONEncoder()
    if let encodedData = try? encoder.encode(funcionarios) {
        UserDefaults.standard.set(encodedData, forKey: "Funcionarios")
    }
}

func carregarFuncionarios() -> [String: Funcionario] {
    if let savedData = UserDefaults.standard.data(forKey: "Funcionarios") {
        let decoder = JSONDecoder()
        if let funcionarios = try? decoder.decode([String: Funcionario].self, from: savedData) {
            return funcionarios
        }
    }
    return [:]
}

