# Settings é onde declaramos os imports das lybraries e todas as configurações dos nossos testes
***Settings***


# O documentation, é o nome da documentação do teste e do que está sendo testado
Documentation   Teste página de Login

# Vai importar todas as dependencias necessárias para rodar os testes que foram implementaas no base.robot (Parecido com herança)
#Foi usado o ../ para voltar uma pasta e entrar na pasta resources
Resource    ../resources/base.robot


# Gancho para tirar screenshot ao final de cada test case
Test Teardown   Take Screenshot


# Test Cases são onde declaramos todos os nossos testes, as funções e comandos a serem executados, com o nome de cada teste
***Test Cases***
Login com sucesso
    [tags]      test1
    Abrir pagina de login em headless
    Get Text    label[for=user_email]   contains    Email
    Fazer login com  papito@parodify.com     pwd123
    Logout link deve estar visível

Senha incorreta
    Abrir pagina de login em headless
    Fazer login com  papito@parodify.com     senha1231
    Mensagem de validacao login  Opps! Dados de acesso incorretos!

Email inesistente
    Abrir pagina de login em headless
    Fazer login com  404@gmail.com     senha1231
    Mensagem de validacao login  Opps! Dados de acesso incorretos!

Email não informado
    Abrir pagina de login em headless
    #Empty é a variavel que já vem no robot para declarar compos vazios
    Fazer login com  ${EMPTY}     senha1231
    Mensagem de validacao login  Opps! Dados de acesso incorretos!

Senha não informada
    Abrir pagina de login em headless
    Fazer login com  papito@parodify.com     ${EMPTY}
    Mensagem de validacao login  Opps! Dados de acesso incorretos!
