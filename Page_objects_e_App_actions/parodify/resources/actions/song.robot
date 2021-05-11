***Settings***
Documentation       Ações de reprodução de Paródias


***Keywords***
Validar se está na pagina musicas
    Wait For Elements State   xpath=//h2[contains(text(), "Músicas")]   visible   7

Dar play na musica
    [Arguments]     ${nomeMusica}
    Click   xpath=//h2[contains(text(), "${nomeMusica}")]/../..//div[contains(@class, "play")]//a