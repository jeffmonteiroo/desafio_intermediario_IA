*** Settings ***
Documentation            Representação do menu superior

Library        Browser

*** Keywords ***
Quando clico na opcao "Novo usuario?"
    Click    css=a[href="/cadastro"]

E clique em Contas
    Click        css=li[class="dropdown"] >> text=Conta
E clique na opção adicionar
    Click        css=a[href="/addConta"]

E clico em listar
    Click        css=a[href="/contas"]

