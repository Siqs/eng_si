
Given('que exista um campo de preenchimento \(endereco)') do
    visit "/"
    page.find_field('endereco_atual')
  end

  Given('que esteja na tela inicial') do
    visit"/"
    
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
  
  Given('que o mapa está centralizado na minha localização atual') do 
    Capybara.current_driver = :selenium_headless  # temporarily select different driver
    visit "/"
    page.execute_script('new google.maps.Marker({position:{lat: -23.539391,lng:-46.566459},map: map})')
    page.execute_script('map.setCenter({lat: -23.539391,lng: -46.566459})');
  end
  
  Then('eu vejo clinicas ao meu redor') do
    expect(page).to have_selector(:id,'gmimap0', count: 1)
    Capybara.use_default_driver       # switch back to default driver
  end