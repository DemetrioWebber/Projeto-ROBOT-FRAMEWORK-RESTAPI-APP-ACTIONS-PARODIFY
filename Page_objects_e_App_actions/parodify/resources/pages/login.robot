***Settings***
Documentation   Ações pagina de login

***Keywords***

Abrir pagina de login
    Open Browser    https://parodify.herokuapp.com/users/sign_in    chromium

Abrir pagina de login em headless
    New Page    https://parodify.herokuapp.com/users/sign_in

Fazer login com
    [Arguments]     ${email}    ${password}

    Fill Text   css=#user_email         ${email}
    Fill Text   css=#user_password      ${password}

    Click   css=input[value="Log in"] 

Mensagem de validacao login
    [Arguments]     ${expect_arg}

    Get Text    css=.is-danger .message-body     ==     ${expect_arg}