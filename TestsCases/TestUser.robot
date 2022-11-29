*** Settings ***
Documentation        Suite de testes de cadastro
...                  O usuário deve se cadastrar no sistema Seu Barriga

Resource            ${CURDIR}/../resources/base.robot

Test Teardown    Close Browser
*** Test Cases ***
Realizar o cadastro de usuário
    ${NOME}=               FakerLibrary.name
    ${EMAILFAKE}=          FakerLibrary.Email
    ${PASS}=               FakerLibrary.Password
    Dado que eu esteja na login page    
    Quando clico na opcao "Novo usuario?"
    E preencho o campo nome com "${NOME}"
    E preencho o campo e-mail com ${EMAILFAKE}
    E preencho o campo senha com "${PASS}"  
    E clico em cadastrar
    Entao a mensagem Usuário inserido com sucesso deve ser exibida

Realizar o cadastro sem informar o nome
    ${EMAILFAKE}=          FakerLibrary.Email
    ${PASS}=               FakerLibrary.Password

    Dado que eu esteja na login page    
    Quando clico na opcao "Novo usuario?"
    E preencho o campo nome com "${EMPTY}"
    E preencho o campo e-mail com ${EMAILFAKE}
    E preencho o campo senha com "${PASS}"  
    E clico em cadastrar
    Entao a mensagem Nome é um campo obrigatório deve ser exibida

Realizar o cadastro sem informar o e-mail
    ${NOME}=               FakerLibrary.name
    ${PASS}=               FakerLibrary.Password

    Dado que eu esteja na login page  
    Quando clico na opcao "Novo usuario?"
    E preencho o campo nome com "${NOME}"
    E preencho o campo e-mail com ${EMPTY}
    E preencho o campo senha com "${PASS}"  
    E clico em cadastrar
    Entao a mensagem Email é um campo obrigatório deve ser exibida


Realizar o cadastro sem informar a senha
    ${NOME}=               FakerLibrary.name
    ${EMAILFAKE}=          FakerLibrary.Email

    Dado que eu esteja na login page  
    Quando clico na opcao "Novo usuario?"
    E preencho o campo nome com "${NOME}"
    E preencho o campo e-mail com ${EMAILFAKE}
    E preencho o campo senha com "${EMPTY}"  
    E clico em cadastrar
    Entao a mensagem Senha é um campo obrigatório deve ser exibida

Realizar o cadastro com todos os campos em branco
    Dado que eu esteja na login page    
    Quando clico na opcao "Novo usuario?"
    E preencho o campo nome com "${EMPTY}"
    E preencho o campo e-mail com ${EMPTY}
    E preencho o campo senha com "${EMPTY}"  
    E clico em cadastrar
    Entao as mensagem "Nome é um campo obrigatório"
    E "Email é um campo obrigatório"
    E "Senha é um campo obrigatório" devem ser exibida


Realizar o cadastro com e-mail inválido
    ${NOME}=               FakerLibrary.name
    ${PASS}=               FakerLibrary.Password
    Dado que eu esteja na login page    
    Quando clico na opcao "Novo usuario?" 
    E preencho o campo nome com "${NOME}"
    E preencho o campo e-mail com jeff.com.br
    E preencho o campo senha com "${PASS}"  
    E clico em cadastrar
    Entao uma mensagem informando erro no campo email e exibida
Realizar o cadastro com o e-mail já utilizado
    ${NOME}=               FakerLibrary.name
    ${PASS}=               FakerLibrary.Password

    Dado que eu esteja na login page   
    Quando clico na opcao "Novo usuario?" 
    E preencho o campo nome com "${NOME}"
    E preencho o campo e-mail com jeffmonteiroo@gmail.com
    E preencho o campo senha com "${PASS}"  
    E clico em cadastrar
    Entao a mensagem Endereço de email já utilizado deve ser exibida


