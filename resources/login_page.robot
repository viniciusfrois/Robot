*** Settings ***
Library           SeleniumLibrary
Resource          ../pages/login_page.robot

*** Keywords ***
Abrir Navegador
    Open Browser       browser=${BROWSER} 
    Maximize Browser Window

Dado que o usuário está na página de login do site saucedemo.com
    Go To              ${URL}  
    Wait Until Element Is Visible    id=user-name    timeout=10s
    Wait Until Element Is Visible    id=password    timeout=10s

Quando o usuário insere credenciais inválidas
    Input Text         id=user-name    ${INVALID_USERNAME}
    Input Text         id=password     ${INVALID_PASSWORD} 

Quando o usuário insere as credenciais válidas
    Input Text         id=user-name    ${USERNAME}
    Input Text         id=password     ${PASSWORD}      

E clica no botão de login
    Click Button       id=login-button  

Então o usuário deve receber uma mensagem de erro indicando que as credenciais são inválidas
    Wait Until Page Contains  Epic sadface: Username and password do not match any user in this service    timeout=10s
    Sleep  5s

Então o usuário deve ser redirecionado para a página de produtos
    Wait Until Location Is  https://www.saucedemo.com/inventory.html    timeout=10s
    Sleep  5s