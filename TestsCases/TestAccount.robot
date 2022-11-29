*** Settings ***
Documentation        Suite de testes de cadastro de conta
...                  O usuário deve cadastrar, editar e excluir contas no sistema Seu Barriga

Resource            ${CURDIR}/../resources/base.robot

Test Setup           Fazer login
Test Teardown        Close Browser
Suite Teardown        Resetar dados
*** Keywords ***

*** Test Cases ***

Realizar o cadastro de conta 
    Dado que eu esteja na pagina home
    E clique em contas
    E clique na opção adicionar
    Quando insiro o nome Conta de Teste
    E clico em salvar
    Então a mensagem "Conta adicionada com sucesso!" deve ser exibida

Realizar o cadastro com o nome de uma conta já existente
    Dado que eu esteja na pagina home
    E clique em contas
    E clique na opção adicionar
    Quando insiro o nome Conta mesmo nome
    E clico em salvar
    Então a mensagem "Já existe uma conta com esse nome!" deve ser exibida

 Alterar o nome de uma conta
    Dado que eu esteja na pagina home
    E clique em contas
    E clique em listar
    E clico na opção editar conta
    Quando insiro o nome Conta Alterada
    E clico em salvar
    Então a mensagem "Conta alterada com sucesso!" deve ser exibida

 Deletar uma conta
    Dado que eu esteja na pagina home
    E clique em contas
    E clique em listar
    Quando na opção excluir conta
    Então a mensagem "Conta excluída com sucesso!" deve ser exibida

  