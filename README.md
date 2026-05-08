# Robot Framework

- Projeto de teste automatizados utilizando Robot Framework e Selenium Library aplicando BDD + Gherkin
- Utilizando o site: https://www.saucedemo.com/

## Estrutura

- `resources`: Keywords/Regras de negócio
- `pages`: Variables/Locators
- `reports`: Pasta para salvar reports e logs durante execução
- `login_test.robot`: Arquivo principal de execução dos testes

## Requisitos

- Phyton
- Robot Framework
- Selenium Library

## Como instalar

```bash
1º Instalar/Configurar o Phyton
2º pip install robot framework
3º pip install --upgrade robotframework-seleniumlibrary
```

## Como executar

```bash
robot -d ./reports/login tests
OU
robot tests
```