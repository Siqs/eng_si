Given('exista um mapa') do
    visit "/"
  end

When('pressiono o botão zoom in') do
  page.has_content?('Zoom in')
end

Then('o zoom no mapa aumenta e minha visão do mapa fica mais focada') do
end

Given('existe um mapa') do
  visit "/"
end
  
When('pressiono o scroll down do mouse') do
  page.has_content?('Zoom out')
end
  
Then('o zoom no mapa diminui e minha visão do mapa fica mais expandida') do
end

Given('exista página de cadastro') do
  visit "/welcome/new"
  # visit pagina de cadastro
end

When('clico em cadastrar') do
  page.has_content?('submit')
end

Then('a clinica deve aparecer na lista') do 
  visit "/"
  #como verificar se o model foi criado?
end
