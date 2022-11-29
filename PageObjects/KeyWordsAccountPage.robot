*** Settings ***
Library        Browser

*** Keywords ***

Quando insiro o nome ${CONTA}
#    [Arguments]    ${CONTA}
    Fill Text        input[id="nome"]        ${CONTA}

 E clico em salvar
    Click        css=button >> text=Salvar

E clique em listar
    Click        css=a[href="/contas"]

E clico na opção editar conta
   Click        xpath=//text()[contains(., "Conta para alterar")]//..//..//a[@href][1]

Quando na opção excluir conta
 #   Click        xpath=//text()[contains(., "Conta Alterada")]//..//..//a[@href][1]
    Click        xpath=//text()[contains(., "Conta Alterada")]//..//..//a[@href][2]
    

Então a mensagem "${msg_esperada}" deve ser exibida
    Wait For Elements State
    ...    css=div[role="alert"] >> text=${msg_esperada}
    ...    visible    5