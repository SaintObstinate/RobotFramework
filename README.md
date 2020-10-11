# RobotFramework
Automação de teste de login válido e inválido utilizando o robotframework e Selenium

## Pré requisitos:

Python 3.8 ou superior instalado na máquina, juntamente como o gerenciador de pacotes.

Chromedriver colocado dentro do PATH do python instalado. Obtenha o driver nesse link:

https://chromedriver.chromium.org/downloads

## Como rodar:

1- Acesse a pasta robot/web/tests

2- Abra o arquivo login.robot com qualquer editor de texto

3- Edite o caso de teste de "Fazer Login" com um usuário e senha corretos do site da Kabum

4- Salve o arquivo

5- Abra um prompt de comando na pasta robot/web/tests e execute o comando: 
```bash 
robot login.robot 
```

## Conclusão
Dois testes deverão ser rodados e no final deles, uma Screenshot deverá aparecer dentro da pasta mostrando o resultado de ambos

