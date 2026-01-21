*** Variables ***
${INPUT_USERNAME}    id=user-name
${INPUT_PASSWORD}    id=password
${BTN_LOGIN}         id=login-button
${MSG_ERRO}          css=[data-test="error"]

*** Keywords ***
Preencher usuário
    [Arguments]    ${usuario}
    Input Text     ${INPUT_USERNAME}    ${usuario}

Preencher senha
    [Arguments]    ${senha}
    Input Text     ${INPUT_PASSWORD}    ${senha}

Clicar em login
    Click Button   ${BTN_LOGIN}

Validar mensagem de erro
    Wait Until Element Is Visible    ${MSG_ERRO}    5s
    Element Should Be Visible        ${MSG_ERRO}

