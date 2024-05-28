*** Settings ***
Resource         ../base.robot
Resource         ../page/emprestimoPage.robot
Documentation    atividade 9 Raro Academy - teste tela de empréstimo e botões
Test Setup       Open Test Application
Test Teardown    Teardown

*** Test Cases ***
CT001 - Emprestimo
    Dado que o usuário está na home
    Quando acessa a tela de empréstimo
    Então visualiza as informações referentes a empréstimo    