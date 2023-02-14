*** Settings ***
Documentation        Testes na página de conteúdos da QAxperience.

Library              SeleniumLibrary

*** Keywords ***
Verificar componete "Conteúdos"
    Wait Until Element Is Visible        xpath://*[@id="navbar"]/div/div/a[1]/span
    Page Should Contain                  Conteúdos

Verificar componete "Ranking"
    Wait Until Element Is Visible        xpath://*[@id="navbar"]/div/div/a[2]/span
    Page Should Contain                  Ranking

Verificar componete "Certificados"
    Wait Until Element Is Visible        xpath://*[@id="navbar"]/div/div/a[3]/span
    Page Should Contain                  Certificados

Verificar componete "Perfil"
    Wait Until Element Is Visible        xpath://*[@id="navbar"]/div/div/a[4]/span
    Page Should Contain                  Perfil

Verificar componete "Minha conta"
    Wait Until Element Is Visible        xpath://*[@id="navbar"]/div/div/a[5]/span
    Page Should Contain                  Minha conta

Verificar curso "Comece aqui" e descrição
    Page Should Contain                  Comece aqui
    Page Should Contain                  Tudo começa aqui, onde você encontra aulas com guia de instalações das ferramentas básicas para qualquer treinamento da QAx.
Verificar curso "Introdução a programação básica em Javascript" e descrição
    Page Should Contain                  Introdução a programação básica em Javascript
    Page Should Contain                  Todo QA de alta performance precisa saber pelo menos o básico da programação e nesse curso você descobrirá que programar não é um bicho de sete cabeças.

Verificar curso "Cypress eXpress" e descrição
    Page Should Contain                  Cypress eXpress
    Page Should Contain                  Neste curso, você conhecerá o Cypress, um framework Javascript de testes automatizados para aplicações web que pode ser usado para testar qualquer coisa que seja executada no navegador.

Verificar curso "Workflow de testes contínuos em Cypress no Github Actions" e descrição
    Page Should Contain                  Workflow de testes contínuos em Cypress no Github Actions
    Page Should Contain                  Os testes de regressão não precisam rodar necessariamente no seu computador. Nesse curso direto ao ponto vamos criar um Workflow de testes contínuos integrando o Cypress Dashboard no Github Actions.

