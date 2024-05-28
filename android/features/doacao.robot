*** Settings ***
Resource         ../base.robot
Resource         ../page/doacaoPage.robot
Documentation    atividade 9 Raro Academy - teste tela de doação
Test Setup       Open Test Application
Test Teardown    Teardown

*** Test Cases ***
CT001 - Tela de doação
    Dado que o usuário está na home
    Então visualiza a tela de doação