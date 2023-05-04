*** Settings ***
Documentation        Testes na página de Ranking da QAxperience.

Resource             ../resources/Base.robot
Test Setup           Abrir navegador
Test Teardown        Fechar navegador

*** Test Cases ***
Validar título e descrição da página de ranking
    [Documentation]    Este teste verifica se todos as informações 
    ...                sobre o ranking estão corretas.
    [Tags]    @ranking
    Login com sucesso
    Acessar "ranking" no menu lateral
    Verificar título ranking e descrição
