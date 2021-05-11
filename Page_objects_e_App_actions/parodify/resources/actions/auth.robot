***Settings***

Documentation       Ações da funcionalidade de autorização


***Variables***
${LOGOUT}=  css=a[href$=sign_out]


***Keywords***
Fazer login com
    [Arguments]     ${email}    ${password}

    Fill Text   css=#user_email         ${email}
    Fill Text   css=#user_password      ${password}

    Click   css=input[value="Log in"] 


Mensagem de validacao login
    [Arguments]     ${expect_arg}

    Get Text    css=.is-danger .message-body     ==     ${expect_arg}


Logout link deve estar visível
    Wait For Elements State   ${LOGOUT}   visible   7


Clicar no logout
    Click   ${LOGOUT}