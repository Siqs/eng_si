Feature: Encontrar clínica mais próxima

    Gostaria de encontrar a clínica mais próxima do endereço que eu colocar

Scenario: colocando meu endereço
    Given que exista um campo de preenchimento (endereco)
    When preencho o campo "Av. Paulista, 1578 "
    And clico no botão salvar endereco atual
    Then eu vejo na lista o endereço mais próximo

Scenario: sem colocar meu endereço
    Given que exista um campo de preenchimento (endereco)
    When preencho o campo ""
    And clico no botão salvar endereco atual
    Then eu não vejo na lista um endereço mais próximo
