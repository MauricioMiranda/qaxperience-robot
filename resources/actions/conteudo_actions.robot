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

Verificar curso "Codecept eXpress (Pré-venda)" e descrição
    Page Should Contain                  Codecept eXpress (Pré-venda)
    Page Should Contain                  Já pensou em automatizar testes de ponta a ponta com a facilidade do Cypress e performance do Playwright? Sim o CodeceptJS une o melhor dos mundos, trazendo um poderoso framework para testes automatizados.

Verificar lab "Testando API com MongoDB e RabbitMQ em Cypress" e descrição
    Page Should Contain                  Testando API com MongoDB e RabbitMQ em Cypress
    Page Should Contain                  Como testar uma API que faz integração com serviços externos através de fila de mensagens? Descubra nesse curso de Cypress direto ao ponto.

Verificar lab "Workflow de testes contínuos em CodecetpJS no Github Actions" e descrição
    Page Should Contain                  Workflow de testes contínuos em CodecetpJS no Github Actions
    Page Should Contain                  Construa um pipeline de testes contínuos em CodeceptJS com Github Actions tornando o processo de testes de regressão mais eficiente, produtivo e padronizado.

Verificar lab Workflow de testes contínuos em Cypress no Github Actions" e descrição
    Page Should Contain                  Workflow de testes contínuos em Cypress no Github Actions
    Page Should Contain                  Os testes de regressão não precisam rodar necessariamente no seu computador. Nesse curso direto ao ponto vamos criar um Workflow de testes contínuos integrando o Cypress Dashboard no Github Actions.

Verificar lab "Workflow de testes contínuos em Playwright no Github Actions" e descrição
    Page Should Contain                  Workflow de testes contínuos em Playwright no Github Actions
    Page Should Contain                  Construa um pipeline de testes contínuos em Playwright com Github Actions tornando o processo de testes de regressão mais eficiente, produtivo e padronizado.

Verificar bootcamp "Cypress eXperience" e descrição
    Page Should Contain                  Cypress eXperience
    Page Should Contain                  Especialize-se através de uma didática eficiente, um método baseado em projetos reais e as experiências que vão mudar a sua visão como QA.
