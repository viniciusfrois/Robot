# Robot Framework

- Projeto de teste automatizados utilizando Robot Framework e Selenium Library aplicando BDD+Gherkin
- Utilizando o site: https://www.saucedemo.com/

## Estrutura

- `pages`: Camada de abstração das páginas (Page Object Model)
- `reports`: Pasta para salvar reports e logs durante execução
- `saucedemo_testes_bdd`: Arquivo principal de execução dos testes

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
robot --outputdir reports/login saucedemo_testes_bdd.robot
OU
robot saucedemo_testes_bdd.robot
```