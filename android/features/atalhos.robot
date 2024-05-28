*** Settings ***
Resource         ../base.robot
Resource         ../page/atalhosPage.robot
Documentation    atividade 9 Raro Academy - teste tela de Encontrar atalhos
Test Setup       Open Test Application
Test Teardown    Teardown

*** Test Cases ***
CT001 - Tela de encontrar atalhos
    Dado que o usuário está na home
    Então visualiza a tela de encontrar atalhos