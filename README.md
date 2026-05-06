# Robot Framework

- Projeto para aprender teste automatizados utilizando Robot Framework e Selenium Library aplicando BDD + Gherkin
- Utilizando o site: https://www.saucedemo.com/ para realização dos testes

## Estrutura

- `pages`: Camada de abstração das páginas (Page Object Model), contendo elementos e ações reutilizáveis
- `reports`: Pasta para salvar reports e logs durante execução
- `saucedemo_testes_bdd`: Arquivo principal de execução dos testes

## Requisitos

- Phyton
- Robot Framework
- Selenium Library

## Como executar

```bash
pip install robot framework
pip install --upgrade robotframework-seleniumlibrary
robot --outputdir reports/login saucedemo_testes_bdd.robot (Salva os reports na pasta)
ou
robot saucedemo_testes_bdd.robot
```