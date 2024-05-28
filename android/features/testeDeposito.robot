*** Settings ***
Resource         ../base.robot
Resource         ../page/depositoPage.robot
Documentation    atividade 9 Raro Academy - teste tela de depósito e botões
Test Setup       Open Test Application
Test Teardown    Teardown

*** Test Cases ***
CT001 - Depósito
    Dado que o usuário está na home
    Quando acessa a tela deposito
    Então visualiza as opções de depósito
