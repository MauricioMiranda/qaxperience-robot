*** Settings ***
Documentation        Testes na página de conteúdos da QAxperience.

Resource             ../resources/Base.robot
Test Setup           Abrir navegador
Test Teardown        fechar navegador

*** Test Cases ***

Validar componentes do menu lateral
    [Documentation]    Este teste verificar se todos os componentes 
    ...                estão presentes no menu lateral.
    [Tags]    Menu    componentes
    Acessar a página de login do site
    Inserir e-mail existente
    Inserir senha correta
    Clicar no botão "login"
    Verificar componete "Conteúdos"
    Verificar componete "Ranking"
    Verificar componete "Certificados"
    Verificar componete "Perfil"
    Verificar componete "Minha conta"

Verificar cursos presentes
    [Documentation]    Este teste verificar se todos os componentes 
    ...                estão presentes no menu lateral.
    [Tags]    Menu    cursos
    Acessar a página de login do site
    Inserir e-mail existente
    Inserir senha correta
    Clicar no botão "login"
    Verificar curso "Comece aqui" e descrição
    Verificar curso "Introdução a programação básica em Javascript" e descrição
    Verificar curso "Cypress eXpress" e descrição
    Verificar curso "Workflow de testes contínuos em Cypress no Github Actions" e descrição
