When('preencho o campo Plano de saúde {string}') do |string|
    fill_in('Plano de saude', :with => string)
  end
  
  When('clico no botao de Procurar') do
    click_button('Procurar')
  end
  
  Then('uma nova pagina carrega exibindo um mapa com as clinicas do Plano de saude') do
    page.has_content?('map')
  end
  
  Then('uma nova pagina carrega exibindo que não foi encontrado nenhuma clinica com o plano de saude especificado') do
    page.has_content?('Desculpe não foi encontrado nenhuma clinica com o plano de saude informado')
  end