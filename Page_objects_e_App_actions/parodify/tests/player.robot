***Settings***
Documentation   Teste do player de paródias

Resource    ../resources/base.robot

Test Teardown   Take Screenshot

***Test Cases***
Reproduzir paródia sertaneja Bug de manhã
    Abrir pagina de login em headless
    Fazer login com  papito@parodify.com  pwd123
    Logout link deve estar visível
    Selecionar busca
    Validar se esta na pagina buscar
    Clicar na imagem    sertanejo
    Clicar na imagem texto paragrafo    Marcus e Debug
    Validar se está na pagina musicas
    Dar play na musica   Bug de Manhã
    sleep   10



