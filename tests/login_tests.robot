*** Settings ***
Resource    ../resources/base.robot

Suite Setup     Abrir Navegador
Suite Teardown  Fechar Navegador

*** Test Cases ***
Login com sucesso
    [Tags]    smoke    regression
    Dado que o usuário acessa a página de login
    Quando informa usuário e senha válidos
    Então o login deve ser realizado com sucesso

Login inválido
    [Tags]    regression
    Dado que o usuário acessa a página de login
    Quando informa usuário ou senha inválidos
    Então deve visualizar mensagem de erro

