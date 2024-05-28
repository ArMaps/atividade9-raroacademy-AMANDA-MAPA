*** Settings ***
Resource         ../base.robot
Resource         ../page/cartaoPage.robot
Documentation    atividade 9 Raro Academy - teste tela de cartão e botões
Test Setup       Open Test Application
Test Teardown    Teardown

*** Test Cases ***
CT001 - Fatura do cartão e botões
    Dado que o usuário está na home
    Quando acessa a tela de cartão de crédito
    Então visualiza sua fatura atual e os botões
    
CT002 - Histórico de transações
    Dado que o usuário está na home
    Quando acessa a tela de cartão de crédito
    Então visualiza o histórico de transações do cartão
