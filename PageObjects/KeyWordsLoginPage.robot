*** Settings ***
Library        Browser

*** Keywords ***


Pagina de Login
    New Browser     headless=False    browser=chromium
    New Page        https://seubarriga.wcaquino.me

Insirir e-mail
    [Arguments]          ${email}
    Fill Text        input[id="email"]         ${email}

Insirir senha
    [Arguments]          ${senha}
    Fill Text        input[id="senha"]      ${senha}

Clique em entrar
    Click        css=button >> text=Entrar
    
Dado que eu esteja na login page
  Pagina de Login

