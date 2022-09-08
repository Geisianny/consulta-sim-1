Feature: Paciente
    As a paciente
    I want to adicionar, remover, visualizar e editar meu cadastro 
    So that eu nao tenha que fazer isso de forma manual

    Scenario: cadastrar paciente corretamente
        Given estou na pagina de paciente
        When eu preencho os campos: nome: 'paciente teste', data_nascimento: '07-09-1999',cpf: '666.666.666-09',email:'pacienteTeste@gmail.com', cidade:'Garanhuns',logradouro: 'rua UFAPE', complemento: 'casa',bairro: 'Boa Vista', cep: '55555-555'
        And eu clico em cadastrar novo paciente
        Then eu vejo uma mensagem que o paciente foi cadastrado com sucesso

    Scenario: editar rua do cadastro do paciente
        Given estou na pagina de paciente
        And eu clico em cadastrar novo paciente
        When eu clico em editar o paciente de cpf: '666.666.666-09'
        And eu edito o logradouro do endereco por 'Rua terra branca'
        Then eu vejo uma mensagem que o endereco do paciente de cpf '666.666.666-09' foi editado com sucesso
        

