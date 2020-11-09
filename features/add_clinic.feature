Feature: adicionar clínicas
    Gostaria de adicionar clínicas na lista do mapa

Scenario: Adicionar Clínica
    Given exista página de cadastro
    When clico em cadastrar
    Then a clinica deve aparecer na lista
