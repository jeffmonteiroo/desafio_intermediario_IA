*** Settings ***
Library            Browser
Library            FakerLibrary       locale=pt_BR


*** Keywords ***
E preencho o campo nome com "${NOME}"
   # [Arguments]    ${NOME}       
     Fill Text        input[id="nome"]         ${NOME}     
E preencho o campo e-mail com ${email} 
    #[Arguments]     ${EMAILFAKE}
    Fill Text        input[id="email"]        ${email}
    Log To Console    ${email}

E preencho o campo senha com "${PASS}"
   #[Arguments]     ${PASS}
    Fill Text        input[id="senha"]        ${PASS}

E clico em cadastrar
    Click        css=input >> text=Cadastrar

Field Type Should Be Email
    Get Attribute       css=input[id="email"] 
    ...        type        equal    email

Entao a mensagem Usuário inserido com sucesso deve ser exibida
    Wait For Elements State
    ...    css=div[role="alert"] >> text=Usuário inserido com sucesso
    ...    visible    5

Entao a mensagem Nome é um campo obrigatório deve ser exibida
    Wait For Elements State
    ...    css=div[role="alert"] >> text=Nome é um campo obrigatório
    ...    visible    5

Entao a mensagem Email é um campo obrigatório deve ser exibida
    Wait For Elements State
    ...    css=div[role="alert"] >> text=Email é um campo obrigatório 
    ...    visible    5

Entao a mensagem Senha é um campo obrigatório deve ser exibida
    Wait For Elements State
    ...    css=div[role="alert"] >> text=Senha é um campo obrigatório 
    ...    visible    5

Entao as mensagem "Nome é um campo obrigatório" 
    Wait For Elements State
    ...    css=div[role="alert"] >> text=Nome é um campo obrigatório 
    ...    visible    5
E "Email é um campo obrigatório"
    Wait For Elements State
    ...    css=div[role="alert"] >> text=Email é um campo obrigatório 
    ...    visible    5
E "Senha é um campo obrigatório" devem ser exibida
    Wait For Elements State
    ...    css=div[role="alert"] >> text=Senha é um campo obrigatório
    ...    visible    5

Entao uma mensagem informando erro no campo email e exibida
    Get Attribute       css=input[placeholder="Email"]
    ...        type        equal    email

Entao a mensagem Endereço de email já utilizado deve ser exibida
    Wait For Elements State
    ...    css=div[role="alert"] >> text=Endereço de email já utilizado
    ...    visible    5