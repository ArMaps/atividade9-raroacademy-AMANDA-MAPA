*** Settings ***
Resource         ../base.robot
Resource         ../page/pagarPage.robot
Documentation    atividade 9 Raro Academy - teste tela de pagar e botões
Test Setup       Open Test Application
Test Teardown    Teardown

*** Test Cases ***
CT001 - Tela de pagamentos
    Quando deseja realizar um Pagamento
    Então visualiza a página de pagamentos
