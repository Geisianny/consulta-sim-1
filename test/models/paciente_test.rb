require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  
  test "nao deve salvar paciente sem nome" do
    paciente = Paciente.new nome: "", data_nascimento: "07-09-1999", cpf:"12345678910",
     email: "pacientesemnome@gmail.com", endereco_attributes:{cidade: "Garanhuns", logradouro: "Rua Ufape",
    complemento: "Apartamento", bairro: "Boa vista", cep: "55555-333"}

    assert_not paciente.save
  end

  test "nao deve salvar paciente sem endereco" do 
    paciente = Paciente.new nome: "paciente 1", data_nascimento: "12-09-1999", cpf:"12345678911",
    email: "pacientesemendereco@gmail.com", endereco_attributes:{cidade: "", logradouro: "",
    complemento: "", bairro: "", cep: "-"}

    assert_not paciente.save
  end
end
