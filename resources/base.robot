*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/global_variables.robot
Resource   pages/login_page.robot
Resource   keywords/login_keywords.robot

*** Keywords ***
Abrir Navegador
    Open Browser    ${URL}    chrome    --headless
    Maximize Browser Window

Fechar Navegador
    Close All Browsers
