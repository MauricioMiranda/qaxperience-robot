*** Settings ***
Documentation        Teste de login

Resource             ../resources/Base.robot
Test Setup           Abrir navegador
Test Teardown        fechar navegador

*** Test Cases ***
Login com sucesso
    [Documentation]    Esse teste verifica se o site está logando 
    ...                com sucesso.
    [Tags]    login    sucesso
    Acessar a página de login do site
    Inserir e-mail existente
    Inserir senha correta
    Clicar no botão "login"
    Verificar mensagem "Login efetuado com sucesso."

Login com falha
    [Documentation]    Esse teste verifica se o site está logando 
    ...                com e-mail inexistente.
    [Tags]    login    email    inexistente
    Acessar a página de login do site
    Inserir e-mail inexistente
    Inserir senha correta
    Clicar no botão "login"
    Verificar mensagem de erro "E-mail ou senha inválida."
