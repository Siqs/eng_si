Given('que exista um campo de preenchimento \(endereco)') do
    visit "/"
    page.find_field('endereco_atual')
  end
  
  When('preencho o campo {string}') do |string|
    fill_in('endereco_atual', with: string)
  end
  
  When('clico no botão salvar endereco atual') do 
      click_button('salvar') 
  end
  
  Then('uma mensagem de sucesso aparece') do
    page.has_content?('Localizacao Salva')
  end
  
  Then('uma mensagem de erro {string}') do |string|
    page.has_content?(string)
  end
