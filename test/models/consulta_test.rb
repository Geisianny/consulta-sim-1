require "test_helper"

class ConsultaTest < ActiveSupport::TestCase

  test 'deve criar uma consulta corretamente' do
    paciente = Paciente.new nome: 'paciente 1', data_nascimento: '13-10-2000', cpf: '706.508.980-01',
                        email: 'paciente1@gmail.com', endereco_attributes:{cidade: 'Garanhuns', 
                        logradouro: 'Rua ABC', complemento: ' casa ', bairro: 'centro', cep: '22222-999'}

    assert paciente.save

    medico = Medico.new nome: 'medico 1', cpf: '706.508.980-01',
                      email: 'medico1@gmail.com', especialidade: "Cardio", crm: '123456'

    assert medico.save

    consulta = Consulta.new data: '12-10-2022', horario: "15:00",
                            medico_id: medico.id,
                            paciente_id: paciente.id
    assert consulta.save

  end

  test 'nao deve criar uma consulta sem horario' do 

    paciente = Paciente.new nome: 'paciente 2', data_nascimento: '19-11-2000', cpf:'706.508.980-01',
                            email: 'paciente2@gmail.com', endereco_attributes:{cidade:'Garanhuns',
                          logradouro: 'Rua 123', complemento: 'Ap 5', bairro: 'centro', cep:'77777-777'}

    assert paciente.save


    medico = Medico.new nome: 'medico 2', cpf: '706.508.980-01',
                      email: 'medico2@gmail.com', especialidade: "neuro", crm: '123456'

    assert medico.save

    
    consulta = Consulta.new data: '30-10-2022',horario: '',
            paciente_id: paciente.id

    assert_not consulta.save

  end

end
