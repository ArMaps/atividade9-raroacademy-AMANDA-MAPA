*** Settings ***
Resource         ../base.robot
Resource         ../page/transferirPage.robot
Documentation    atividade 9 Raro Academy - teste tela de transferir e botões
Test Setup       Open Test Application
Test Teardown    Teardown

*** Test Cases ***
CT001 - Tela de transferir e botões
    Dado que o usuário está na home
    Quando acessa a tela de transferir
    Então visualiza a tela de transferências