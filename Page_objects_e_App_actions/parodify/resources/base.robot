***Settings***
Documentation       Arquivo que implementa a estrutura inicial do projeto, para instanciação de libs e mais...


# Comando Library importa as librarys necessárias
Library     Browser


# importa as keywords personalizadas para utilizar nos test cases Page Object + Actions
Resource    pages/login.robot
Resource    pages/pagina_logada.robot
Resource    pages/pagina_busca.robot
Resource    pages/pagina_musicas.robot

# importa as keywords personalizadas para utilizar nos test cases, somente Actions
Resource    actions/auth.robot
Resource    actions/nav.robot
Resource    actions/song.robot
