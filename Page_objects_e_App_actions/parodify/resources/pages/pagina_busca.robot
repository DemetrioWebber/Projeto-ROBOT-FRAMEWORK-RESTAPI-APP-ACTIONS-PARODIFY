***Settings***
Documentation   Ações para página de busca do site



***Keywords***
Validar se esta na pagina buscar
    Wait For Elements State   xpath=//h2[contains(text(), "Buscar")]   visible   7

Clicar na imagem
    [Arguments]     ${nomeImagem}
    Click   xpath=//img[contains(@src,"${nomeImagem}.png")]/..

Clicar na imagem texto paragrafo
    [Arguments]     ${texto}
    Click   xpath=//p[contains(text(),"${texto}")]