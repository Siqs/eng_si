Feature: Filtrar Plano Saude

  Gostaria de oder visualizar clinicas que aceitam um determinado plano de saúde

Scenario: Procurando clinicas por um plano de saude cadastrado
    Given que esteja na tela inicial
    When preencho o campo Plano de saúde "Unimed"
    And clico no botao de Procurar
    Then uma nova pagina carrega exibindo um mapa com as clinicas do Plano de saude


Scenario: Procurando clinicas por um plano de saude não cadastrado
    Given que esteja na tela inicial
    When preencho o campo Plano de saúde "Porto seguro"
    And clico no botao de Procurar
    Then uma nova pagina carrega exibindo que não foi encontrado nenhuma clinica com o plano de saude especificado
    
