Feature: Paciente
    As a paciente
    I want to adicionar, remover, visualizar e editar meu cadastro 
    So that eu nao tenha que fazer isso de forma manual

    Scenario: remover paciente
        Given estou na pagina de paciente
        And o paciente com cpf '666.666.666-66' existe
        When eu clico em remover o medico com cpf '666.666.666-66'
        Then eu vejo uma mensagem que o paciente foi apagado com sucesso


    Scenario: cadastrar paciente corretamente
        Given estou na pagina de paciente
        When eu preencho os campos: nome: 'paciente teste', data_nascimento: '07-09-1999',cpf: '706.508.980-01',email:'pacienteTeste@gmail.com', cidade:'Garanhuns',logradouro: 'rua UFAPE', complemento: 'casa',bairro: 'Boa Vista', cep: '55555-555'
        And eu clico em cadastrar novo paciente
        Then eu vejo uma mensagem que o paciente foi cadastrado com sucesso



