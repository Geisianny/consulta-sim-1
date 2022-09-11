Given('estou na pagina de paciente') do
  visit 'pacientes/new'
  expect(page).to have_content('New paciente')
end

When('eu preencho os campos: nome: {string}, data_nascimento: {string},cpf: {string},email:{string}, cidade:{string},logradouro: {string}, complemento: {string},bairro: {string}, cep: {string}') do |string, string2, string3, string4, string5, string6, string7, string8, string9|
  fill_in 'paciente[nome]', :with => string
  fill_in 'paciente[data_nascimento]', :with => string2
  fill_in 'paciente[cpf]', :with => string3
  fill_in 'paciente[email]', :with => string4
  fill_in 'cidade', :with => string5
  fill_in 'logradouro', :with => string6
  fill_in 'complemento', :with => string7
  fill_in 'bairro', :with => string8
  fill_in 'cep', :with => string9
  
end

When('eu clico em cadastrar novo paciente') do
  click_button 'Create Paciente'
end

Then('eu vejo uma mensagem que o paciente nao foi cadastrado no sistema') do
  expect(page).to have_content('ERRO: o paciente nao foi cadastrado')
end
