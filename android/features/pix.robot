*** Settings ***
Resource         ../base.robot
Resource         ../page/pixPage.robot
Documentation    atividade 9 Raro Academy - teste tela de pix e botões
Test Setup       Open Test Application
Test Teardown    Teardown

*** Test Cases ***
CT001 - Tela Pix
    Dado que o usuário está na home
    Quando acessa a tela Pix
    Então visualiza a tela minha área Pix