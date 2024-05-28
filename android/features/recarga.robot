*** Settings ***
Resource         ../base.robot
Resource         ../page/recargaPage.robot
Documentation    atividade 9 Raro Academy - teste tela de recarga e botões
Test Setup       Open Test Application
Test Teardown    Teardown

*** Test Cases ***
CT001 - Tela de recarga
    Dado que o usuário está na home
    Quando acessa a tela de recarga
    Então visualiza a tela de recarga