*** Settings ***
Resource         ../base.robot
Resource    ../page/contaPage.robot
Documentation    atividade 9 Raro Academy - histórico da conta e botões disponíveis
Test Setup       Open Test Application
Test Teardown    Teardown

*** Test Cases ***
CT001 - Saldo disponível
    Dado que o usuário está na home page
    Quando deseja visualizar informações da conta
    Então visualiza opções de operações financeiras
CT002 - histórico de transações
    Dado que o usuário está na tela de saldo disponível
    Quando visualiza o histórico
    Então tem acesso ao histórico de transações