*** Settings ***
Documentation      Base da documentação

Library            SeleniumLibrary
Library            OperatingSystem
Resource           actions/cadastro_actions.robot

*** Variables ***
${BROWSER}        Chrome
${URL}            https://play.qaxperience.com/

*** Keywords ***
Abrir navegador
    Open Browser                      browser=Chrome
    Maximize Browser Window

fechar navegador
    Close Browser

Acessar a página de login do site
    Go to                             ${URL}
