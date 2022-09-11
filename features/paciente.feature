Feature: Paciente
    As a paciente
    I want to adicionar, remover, visualizar e editar meu cadastro 
    So that eu nao tenha que fazer isso de forma manual

    Scenario: nao deve salvar paciente sem nome
        Given estou na pagina de paciente
        When eu preencho os campos: nome: '', data_nascimento: '07-09-1999',cpf: '706.508.980-01',email:'pacienteTeste@gmail.com', cidade:'Garanhuns',logradouro: 'Rua Ufape', complemento: 'Apartamento',bairro: 'Boa Vista', cep: '55555-333'
        And eu clico em cadastrar novo paciente
        Then eu vejo uma mensagem que o paciente foi nao cadastrado no sistema


    Scenario: nao deve salvar paciente sem endereco
        Given estou na pagina de paciente
        When eu preencho os campos: nome: '', data_nascimento: '07-09-1999',cpf: '706.508.980-01',email:'pacienteTeste@gmail.com', cidade:'',logradouro: '', complemento: '',bairro: '', cep: ''
        And eu clico em cadastrar novo paciente
        Then eu vejo uma mensagem que o paciente foi nao cadastrado no sistema

    


