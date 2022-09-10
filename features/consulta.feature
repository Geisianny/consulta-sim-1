Feature: consulta
    As um paciente do sistema
    I want to agendar, visualizar e editar uma consulta
    So that eu nao tenha que fazer de forma manual

Scenario: Agendar uma consulta corretamente
    Given eu estou na pagina de consulta
    And existe um paciente no sistema com o nome de 'paciente teste'
    When eu preencho a consulta com o paciente de nome 'Paciente teste', medica 'Emily Souza', horario '14:00' e data '15/09/22'
    And eu clico em criar consulta
    Then vejo uma mensagem que a consulta foi criada com sucesso

Scenario: Agendar uma consulta com medico inexistente 
    Given eu estou na pagina de consulta
    And existe um paciente no sistema com o nome de 'Paciente teste'
    When eu preencho a consulta com o paciente de nome 'Paciente teste', medico 'Rodrigo Andrade', horario '15:00' e data '20/09/22'
    And eu clico em criar consulta
    Then vejo uma mensagem de erro informando que o medico nao existe e a consulta nao foi agendada