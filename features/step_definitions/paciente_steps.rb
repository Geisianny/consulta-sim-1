Given ('estou na pagina de paciente') do 
    visit 'pacientes/new'
    expect(page).to have_content('New paciente')
end

When('eu preencho os campos: nome: {string}, data_nascimento: {string},cpf: {string},email:{string}, cidade:{string},logradouro: {string}, complemento: {string},bairro: {string}, cep: {string}') do 
    fill_in 'paciente[nome]', :with => 'paciente teste'
    fill_in 'paciente[data_nascimento]', :with => '17/09/1988'
    fill_in 'paciente[cpf]', :with => '706.508.980-01'
    fill_in 'paciente[email]', :with => 'pacienteTeste@gmail.com'
    fill_in 'cidade', :with => 'Garanhuns'
    fill_in 'logradouro', :with => 'rua UFAPE'
    fill_in 'complemento', :with =>  'casa'
    fill_in 'bairro', :with => 'Boa Vista'
    fill_in 'cep', :with => '55555-555'

  end
  
  When('eu clico em cadastrar novo paciente') do
    click_button 'Create Paciente'
  end
  
  Then('eu vejo uma mensagem que o paciente foi cadastrado com sucesso') do
    expect(page).to have_content('Paciente was successfully created.')
  end
  
  Given('eu clico em pacientes do sistema') do
    visit 'pacientes/new'
  end
  
  When('eu clico em editar o paciente de cpf: {string}') do |string|
    click_link "e-#{string}"
  end
  
  When('eu edito o logradouro do endereco por {string}') do |string|
    fill_in 'paciente[logradouro]', :with => 'Rua terra branca'
    click_on 'Update Paciente'
  end
  
  Then('eu vejo uma mensagem que o endereco do paciente de cpf {string} foi editado com sucesso') do |string|
    expect(page).to have_content('Paciente cpf{string} was successfully created.')
  end