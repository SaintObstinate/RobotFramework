# RobotFramework
Automação de teste de login válido e inválido utilizando o robotframework e Selenium

## Pré requisitos:

Python 3.8 ou superior instalado na máquina, juntamente como o gerenciador de pacotes.

Chromedriver colocado dentro do PATH do python instalado. Obtenha o driver nesse link:

https://chromedriver.chromium.org/downloads

## Como rodar:



1- Instale o RobotFramework no sistema. Em um prompt de comando execute:
```bash
pip install robotframework
```

2- Depois instale a biblioteca do Selenium para o robotframework utilizando do comando: 

```bash
  pip install robotframework-seleniumlibrary
```

3- Acesse a pasta robot/web/tests

4- Abra o arquivo login.robot com qualquer editor de texto

5- Edite o caso de teste de "Fazer Login" com um usuário e senha corretos do site da Kabum

6- Salve o arquivo

7- Abra um prompt de comando na pasta robot/web/tests e execute o comando: 
```bash 
robot login.robot 
```

## Conclusão
Dois testes deverão ser rodados e no final deles, uma Screenshot deverá aparecer dentro da pasta mostrando o resultado de ambos

