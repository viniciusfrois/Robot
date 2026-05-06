*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://www.saucedemo.com/
${USERNAME}       standard_user
${PASSWORD}       secret_sauce

*** Keywords ***
Abrir Navegador
    [Documentation]    Abre o navegador
    Open Browser       browser=${BROWSER} 
    Maximize Browser Window
    Sleep  2s

Dado que o usuário está na página de login do site saucedemo.com
    Go To              ${URL}
    Sleep  2s   

Quando o usuário insere as credenciais válidas
    Input Text         id=user-name    ${USERNAME}
    Input Text         id=password     ${PASSWORD}
    Sleep  2s 

E clica no botão de login
    Click Button       id=login-button
    Sleep  2s    

Então o usuário deve ser redirecionado para a página de produtos
    Location Should Be  https://www.saucedemo.com/inventory.html    
    Sleep  2s
