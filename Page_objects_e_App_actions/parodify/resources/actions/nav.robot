***Settings***
Documentation       Ações de navegação no Parodify


***Keywords***
Selecionar busca
    Click   a[href="/search/new"]

Clicar na imagem
    [Arguments]     ${nomeImagem}
    Click   xpath=//img[contains(@src,"${nomeImagem}.png")]/..

Clicar na imagem texto paragrafo
    [Arguments]     ${texto}
    Click   xpath=//p[contains(text(),"${texto}")]