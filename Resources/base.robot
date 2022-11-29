*** Settings ***
Documentation        Tudo começa aqui

Library           DateTime
Library           Browser
Library           JSONLibrary

Resource        ../PageObjects/KeyWordsUser.robot
Resource        ../PageObjects/KeyWordsLoginPage.robot
Resource        ../PageObjects/KeyWordsHomePage.robot
Resource        ./components/navbar.resource
Resource        ../PageObjects/KeyWordsAccountPage.robot


*** Keywords ***
# Helpers
Get Fixture
    [Arguments]      ${fixture_file}

    ${fixture}        Load JSON From File
    ...               ${CURDIR}/fixtures/${fixture_file}.json
    ...               encoding=UTF-8

    [return]        ${fixture}

Fazer login
    ${user}    Get Fixture        chaves
    Pagina de Login
    Insirir e-mail         ${user}[email] 
    Insirir senha          ${user}[senha] 
    Clique em entrar
    Wait For Elements State
    ...    css=div[role="alert"] >> text=Bem vindo, ${user}[name]!
    ...    visible    5

Resetar dados
    Fazer login
    Click        css=a[href="/reset"]
