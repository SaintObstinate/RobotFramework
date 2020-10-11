*** Settings ***
Resource        basePage.robot

Test Setup      Inicia sessão 
Test Teardown   Encerra sessão

*** Test Cases ***
Login Valido
    Go To                           ${url}
    Fazer Login                     EmailValido@email.com       SenhaDoEmail
    Mensagem alerta Login Valido    OLÁ

Login invalido
    Go To                           ${url}
    Fazer Login                     teste        102030

    Mensagem alerta Login Invalido           ERRO


*** Keywords ***
Fazer Login
    [Arguments]                     ${uname}       ${pass}
    Wait Until Element Is Visible    id:li-login-usuario        
    Click Element                   id:li-login-usuario
    Wait Until Element Is Visible   css:input[name=login] 
    Wait Until Element Is Visible   css:input[name=senha]       
    Input Text                      css:input[name=login]          ${uname}
    Input Text                      css:input[name=senha]          ${pass}
    Press Keys                      css:input[name=senha]          RETURN

Mensagem alerta Login Invalido
    [Arguments]                     ${mensagem_esperada}

    ${mensagem}=                    Get webElement          class:mc_texto_subtitle18
    Should Contain                  ${mensagem.text}         ${mensagem_esperada}

Mensagem alerta Login Valido
    [Arguments]                     ${mensagem_esperada}
    Sleep                           2s
    ${mensagem}=                    Get webElement          class:cliente-logado
    Should Contain                  ${mensagem.text}         ${mensagem_esperada}

