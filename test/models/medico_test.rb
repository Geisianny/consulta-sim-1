require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test 'criando medico corretamente' do
    medico = Medico.new nome: 'Rodrigo Andrade', cpf: '706.508.980-01', email: 'rodrigo@rodrigo.com',
                        especialidade: 'Reumatologista', crm: '123456'
    assert medico.save
  end

  test 'Nao deve criar medico com cpf invalido' do
    medico = Medico.new nome: 'medico sem cpf', cpf: '888.769.456-tt', email: 'medicocpf@gmail.com',
                        especialidade: 'Cardiologia', crm: '222222'
    assert_not medico.save
  end

  test 'Nao deve criar medico sem especialidade' do
    medico = Medico.new nome: 'medico sem especialidade', cpf: '666.666.666-66', email: 'medicosemespecialidade@gmail.com',
                        especialidade: '', crm: '111111'
    assert_not medico.save
  end
  
end
