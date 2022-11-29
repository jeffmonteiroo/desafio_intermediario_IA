*** Settings ***
Library        Browser

*** Keywords ***
Dado que eu esteja na pagina home
    Wait For Elements State
    ...    css=span[style="text-align: center"] >> text= Seu Barriga. Nunca mais esqueça de pagar o aluguel.
    ...    visible    5