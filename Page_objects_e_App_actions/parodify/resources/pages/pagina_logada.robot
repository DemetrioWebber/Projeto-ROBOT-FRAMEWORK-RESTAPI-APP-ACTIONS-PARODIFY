***Settings***

Documentation   Ações na página home do site


***Variables***
${LOGOUT}=  css=a[href$=sign_out]

***Keywords***
Logout link deve estar visível
    Wait For Elements State   ${LOGOUT}   visible   7


Clicar no logout
    Click   ${LOGOUT}


Selecionar busca
    Click   a[href="/search/new"]
