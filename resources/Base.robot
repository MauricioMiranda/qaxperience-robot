*** Settings ***
Documentation      Base da documentação

Library            SeleniumLibrary
Library            OperatingSystem
Resource           actions/cadastro_actions.robot
Resource           actions/conteudo_actions.robot
Resource           actions/ranking_actions.robot

*** Variables ***
${BROWSER}                Chrome
${URL}                    https://play.qaxperience.com/
${MENU_CONTEUDO}          xpath://*[@id="navbar"]/div/div/a[1]/span
${MENU_RANKING}           xpath://*[@id="navbar"]/div/div/a[2]/span
${MENU_CERTIFICADO}       xpath://*[@id="navbar"]/div/div/a[3]/span
${MENU_PERFIL}            xpath://*[@id="navbar"]/div/div/a[4]/span
${MENU_MINHA_CONTA}       xpath://*[@id="navbar"]/div/div/a[5]/span

*** Keywords ***
Abrir navegador
    Open Browser                      ${BROWSER}
    Maximize Browser Window
    Go to                             ${URL}

Fechar navegador
    Capture Page Screenshot
    Close Browser

Login com sucesso
    Inserir e-mail existente
    Inserir senha correta
    Clicar no botão "login"
