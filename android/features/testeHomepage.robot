*** Settings ***
Resource         ../base.robot
Documentation    atividade 9 Raro Academy - teste Home page
Test Setup       Open Test Application
Test Teardown    Teardown


*** Test Cases ***
CT001 - Ocultar saldo 
    Dado que o usuário está na home
    Quando deseja ocultar o saldo
    Então o saldo deve ficar oculto

CT002 - Inidicar Amigos
    Dado que o usuário está na home
    Quando acessa a página de indicar amigos
    Então deve acessar a tela de indicação

CT003 - Cabeçalho da conta
    Dado que o usuário está na home
    Quando visualiza o cabeçalho do app
    Então deve estar visível o nome do títular da Conta

CT004 - Verificar saldo da conta
    Dado que o usuário está na home
    Então deve estar visível o saldo da conta

CT005 - Verificar elementos do carrossel
    Dado que o usuário está na home
    Então verifico todos elementos do carrossel

CT006 - Meus cartões
    Dado que o usuário está na home
    Então visualiza a aba meus cartões, empréstimo e planos futuros

CT007 - Cartão de Crédito
    Dado que o usuário está na home
    Então visualiza o valor da fatura e limite disponível

CT008 - Empréstimo
    Dado que o usuário está na home
    Então vizualiza a oppção de realizar empréstimo

CT009 - Investimentos
    Dado que o usuário está na home
    Então visualiza a opção de realizar Investimentos

CT010 - Seguro de vida
    Dado que o usuário está na home
    Então visualiza a opção de fazer seguro de vida

CT011 - Descubra mais
    Dado que o usuário está na home
    Então visualiza WhatsApp e Indique seus amigos