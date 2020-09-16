*** Settings ***
Library     app.py

*** Test Cases ***
Deve retornar uma mensagem de boas vindas
    ${result}=      Welcome     Iago
    Should Be Equal  ${result}  Hello Iago, bem vindo ao Robot Framework!