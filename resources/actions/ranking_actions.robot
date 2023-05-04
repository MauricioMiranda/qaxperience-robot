*** Settings ***
Documentation        Testes na página de Ranking da QAxperience.

Library              SeleniumLibrary

*** Keywords ***

Acessar "ranking" no menu lateral
    Wait Until Element Is Visible        xpath://*[@id="navbar"]/div/div/a[2]/span
    Page Should Contain                  Ranking
    Click Element                        xpath://*[@id="navbar"]/div/div/a[2]/span

Verificar título ranking e descrição
    Wait Until Element Is Visible        xpath://*[@id="main"]/div[1]/div/div/h2
    Page Should Contain                  Compare seu progresso com outros participantes
    Page Should Contain                  Conquiste mais pontos de experiência postando comentário relevantes
