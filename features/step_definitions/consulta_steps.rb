Given('eu estou na pagina de consulta') do
    visit 'consultas/new'
    expect(page).to have_content('New consulta')
  end
  
  Given('existe um paciente no sistema com o nome de {string}') do |string|
    click_button 'Show this paciente'
  end
  
  When('eu preencho a consulta com o paciente de nome {string}, medica {string}, horario {string} e data {string}') do |string, string2, string3, string4|
    fill_in 'paciente[nome]', :with => string
    fill_in 'medico[nome]', :with => string2
    fill_in 'consulta[horario]', :with => string3
    fill_in 'consulta[data]', :with => string4
  end
  
  When('eu clico em criar consulta') do
    click_button 'Create consulta'
  end
  
  Then('vejo uma mensagem que a consulta foi criada com sucesso') do
    expect(page).to have_content('Consulta was successfully created.')
  end
  
  When('eu preencho a consulta com o paciente de nome {string}, medico {string}, horario {string} e data {string}') do |string, string2, string3, string4|
    fill_in 'paciente[nome]', :with => string
    fill_in 'medico[nome]', :with => string2
    fill_in 'consulta[horario]', :with => string3
    fill_in 'consulta[data]', :with => string4
  end
  
  Then('vejo uma mensagem de erro informando que o medico nao existe e a consulta nao foi agendada') do
    expect(page).to have_content('Consulta was not successfully created.')
  end
  
  