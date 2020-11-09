Feature: Ver entorno do endereco

    Gostaria de ver clínicas e postos de saúde no entorno do meu endereço atual

Scenario: Inserindo seu endereco atual 
    Given que exista um campo de preenchimento (endereco)
    When preencho o campo "Av. Paulista, 1578 "
    And clico no botão salvar endereco atual
    Then uma mensagem de sucesso aparece

Scenario: Inserindo dado nulo
    Given que exista um campo de preenchimento (endereco)
    When preencho o campo ""
    And clico no botão salvar endereco atual
    Then uma mensagem de erro "Localizacao Não Salva"

Scenario: visualizando clinicas proximas
    Given que o mapa está centralizado na minha localização atual
    Then eu vejo clinicas ao meu redor

