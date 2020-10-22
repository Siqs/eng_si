Feature: zoom no mapa

    Gostaria de ver outras clinicas com zoom in ou out no mapa

Scenario: Zoom in
    Given exista um mapa
    When pressiono o botão zoom in 
    Then o zoom no mapa aumenta e minha visão do mapa fica mais focada

Scenario: Zoom out
    Given existe um mapa
    When pressiono o scroll down do mouse
    Then o zoom no mapa diminui e minha visão do mapa fica mais expandida