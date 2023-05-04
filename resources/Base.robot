*** Settings ***
Documentation      Base da documentação

Library            SeleniumLibrary
Library            OperatingSystem
Resource           actions/cadastro_actions.robot
Resource           actions/conteudo_actions.robot
Resource           actions/ranking_actions.robot

*** Variables ***
${BROWSER}        Chrome
${URL}            https://play.qaxperience.com/

*** Keywords ***
Abrir navegador
    Open Browser                      browser=Chrome
    Maximize Browser Window
    Go to                             ${URL}

Fechar navegador
    Close Browser

Login com sucesso
    Inserir e-mail existente
    Inserir senha correta
    Clicar no botão "login"
