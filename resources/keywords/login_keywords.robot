*** Keywords ***

Dado que o usuário acessa a página de login
    Go To    ${URL}

Quando informa usuário e senha válidos
    Preencher usuário    standard_user
    Preencher senha     secret_sauce
    Clicar em login

Quando informa usuário ou senha inválidos
    Preencher usuário    usuario_invalido
    Preencher senha     senha_errada
    Clicar em login

Então o login deve ser realizado com sucesso
    Page Should Contain    Products

Então deve visualizar mensagem de erro
    Validar mensagem de erro
