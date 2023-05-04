*** Settings ***
Documentation        Testes na página de conteúdos da QAxperience.

Resource             ../resources/Base.robot
Test Setup           Abrir navegador
Test Teardown        fechar navegador

*** Test Cases ***
Validar componentes do menu lateral
    [Documentation]    Este teste verificar se todos os componentes 
    ...                estão presentes no menu lateral.
    [Tags]    @menu    @componentes
    Login com sucesso
    Verificar componete "Conteúdos"
    Verificar componete "Ranking"
    Verificar componete "Certificados"
    Verificar componete "Perfil"
    Verificar componete "Minha conta"

Verificar cursos
    [Documentation]    Este teste verificar se todos os cursos estão 
    ...                presentes na página de Conteúdos.
    [Tags]    @menu    @cursos
    Login com sucesso
    Verificar curso "Comece aqui" e descrição
    Verificar curso "Introdução a programação básica em Javascript" e descrição
    Verificar curso "Cypress eXpress" e descrição
    Verificar curso "Workflow de testes contínuos em Cypress no Github Actions" e descrição
    Verificar curso "Codecept eXpress (Pré-venda)" e descrição

Verificar Labs
    [Documentation]    Este teste verifica se todos os labs estão 
    ...                presentes na página de Conteúdos.
    [Tags]    @menu    @labs
    Login com sucesso
    Verificar lab "Testando API com MongoDB e RabbitMQ em Cypress" e descrição
    Verificar lab "Workflow de testes contínuos em CodecetpJS no Github Actions" e descrição    
    Verificar lab Workflow de testes contínuos em Cypress no Github Actions" e descrição
    Verificar lab "Workflow de testes contínuos em Playwright no Github Actions" e descrição

Verificar Bootcamps
    [Documentation]    Este teste verifica se todos os Bootcamps estão
    ...                presentes na página de Conteúdos.
    Login com sucesso
    Verificar bootcamp "Cypress eXperience" e descrição

