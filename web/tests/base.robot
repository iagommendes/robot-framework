*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}              https://training-wheels-protocol.herokuapp.com/  

*** Keywords ***
Star Session
    Open Browser        ${url}      chrome

End Session
    Close Browser