*** Settings ***
Documentation     Essa suite testa o site saucedemo.com utilizando Robot Framework, SeleniumLibrary, BDD(Gherkin).
Resource          ../resources/login_page.robot
Suite Setup       Abrir Navegador


*** Test Cases ***
Caso de teste 01 - Login com sucesso
    [Documentation]    Verifica se o login é realizado com sucesso utilizando credenciais válidas.
    [Tags]             Login
    Dado que o usuário está na página de login do site saucedemo.com
    Quando o usuário insere as credenciais válidas
    E clica no botão de login
    Então o usuário deve ser redirecionado para a página de produtos

Caso de teste 02 - Login com credenciais inválidas
    [Documentation]    Verifica se o login falha ao utilizar credenciais inválidas.
    [Tags]             Login
    Dado que o usuário está na página de login do site saucedemo.com
    Quando o usuário insere credenciais inválidas
    E clica no botão de login
    Então o usuário deve receber uma mensagem de erro indicando que as credenciais são inválidas    