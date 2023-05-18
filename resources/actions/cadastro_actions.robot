*** Settings ***
Documentation        Teste de login.

Library              SeleniumLibrary

*** Keywords ***
Clicar no botão "Entrar"
    Element Should Be Visible        xpath://*[@id="w-node-_90910534-8503-0140-553b-dd5cfa0cbf37-fa0cbf10"]/div[1]/a/div[1]
    Page Should Contain                  Entrar
    Click Element                        xpath://*[@id="w-node-_90910534-8503-0140-553b-dd5cfa0cbf37-fa0cbf10"]/div[1]/a/div[1]

Inserir e-mail existente
    Wait Until Element Is Visible        xpath://*[@id="user_email"]
    Page Should Contain                  E-mail    
    Input Text                           xpath://*[@id="user_email"]           mauriciodesouzamiranda@gmail.com
    
Inserir senha correta
    Element Should Be Visible        xpath://*[@id="user_password"]
    Page Should Contain                  E-mail    
    Input Text                           xpath://*[@id="user_password"]        M@druga123

Clicar no botão "login"
    Element Should Be Visible        xpath://*[@id="new_user"]/div[3]/input
    Page Should Contain                  login    
    Click Button                         xpath://*[@id="new_user"]/div[3]/input

Verificar mensagem "Login efetuado com sucesso."
    Wait Until Element Is Visible        Login efetuado com sucesso.
    Page Should Contain                  Login efetuado com sucesso.

Inserir e-mail inexistente
    Wait Until Element Is Visible        xpath://*[@id="user_email"]
    Page Should Contain                  E-mail    
    Input Text                           xpath://*[@id="user_email"]           34dfgdfg435h5r56y5h54g4@gmail.com

Verificar mensagem de erro "E-mail ou senha inválida."
    Page Should Contain                  E-mail ou senha inválida.

Inserir senha incorreta
    Element Should Be Visible        xpath://*[@id="user_password"]
    Page Should Contain                  E-mail    
    Input Text                           xpath://*[@id="user_password"]        12345

Verificar Mensagem de erro "Preencha este campo."
    Page Should Contain                  Preencha este campo.
