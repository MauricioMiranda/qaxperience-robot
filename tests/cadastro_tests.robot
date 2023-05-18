*** Settings ***
Documentation        Teste de login

Resource             ../resources/Base.robot
Test Setup           Abrir navegador
Test Teardown        Fechar navegador

*** Test Cases ***
Login com sucesso
    [Documentation]    Esse teste verifica se o site está logando 
    ...                com sucesso.
    [Tags]    @login    @sucesso
    Login com sucesso
    Verificar mensagem "Login efetuado com sucesso."

Login com e-mail inexistente
    [Documentation]    Esse teste verifica se o site está logando 
    ...                com e-mail inexistente.
    [Tags]    @login    @email    @inexistente
    Inserir e-mail inexistente
    Inserir senha correta
    Clicar no botão "login"
    Verificar mensagem de erro "E-mail ou senha inválida."

Login com senha incorreta
    [Documentation]    Esse teste verifica quando o e-mail é 
    ...                existente
    [Tags]    @login    @senha    @incorreta
    Inserir e-mail existente
    Inserir senha incorreta
    Clicar no botão "login"
    Verificar mensagem de erro "E-mail ou senha inválida."

Clicar no botão "login" sem preencher os campos de e-mail e senha.
    [Documentation]    Este teste verificar o comportamento do site
    ...                clicando no botão "login" sem preencher os 
    ...                campos de e-mail e senha.
    [Tags]    @login    @semSenha    @semEmail
    Clicar no botão "login"
    Verificar mensagem de erro "Preencha este campo."
