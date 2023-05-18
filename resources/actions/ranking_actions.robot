*** Settings ***
Documentation        Testes na página de Ranking da QAxperience.

Library              SeleniumLibrary

*** Variables ***
${TITULO_RANKING}        xpath://*[@id="main"]/div[1]/div/div/h2
${TEXTO_RANKING}         xpath://*[@id="main"]/div[1]/div/div/p

*** Keywords ***
Acessar "ranking" no menu lateral
    Wait Until Element Is Visible        ${MENU_RANKING}
    Page Should Contain                  Ranking
    Click Element                        ${MENU_RANKING}
    Wait Until Element Is Visible        ${TITULO_RANKING}

Verificar título ranking e descrição
    Wait Until Element Is Visible        ${TITULO_RANKING}
    Page Should Contain                  Compare seu progresso com outros participantes
    Page Should Contain                  Conquiste mais pontos de experiência
