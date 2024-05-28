*** settings ***
Resource    ../base.robot

*** Variables ***
${HOME_CONTA}                 xpath=//android.view.View[contains(@content-desc,"Conta")]
${CONTA_AJUDA}                xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[2]
${CONTA_SALDO_DISPONIVEL}     xpath=//android.view.View[@content-desc="Saldo disponível"]
${CONTA_VALOR DISPONIVEL}     xpath=//android.view.View[@content-desc="R$ 181,79"]
${CONTA_DINHEIRO_GUARDADO}    xpath=//android.view.View[contains(@content-desc,"Dinheiro guardado")]
${CONTA_RENDIMENTO}           xpath=//android.view.View[contains(@content-desc="Rendimento total da conta")]
${CONTA_DEPOSITAR_BTN}        xpath=//android.widget.HorizontalScrollView/android.widget.Button[1]
${CONTA_DEPOSITAR_TXT}        xpath=//android.view.View[@content-desc="Depositar"]
${CONTA_PAGAR_BTN}            xpath=//android.widget.HorizontalScrollView/android.widget.Button[2]
${CONTA_PAGAR_TXT}            xpath=//android.view.View[@content-desc="Pagar"]
${CONTA_TRANSFERIR_BTN}       xpath=//android.widget.HorizontalScrollView/android.widget.Button[3]
${CONTA_TRANSFERIR_TXT}       xpath=//android.view.View[@content-desc="Transferir"]
${CONTA_EMPRESTIMO_BTN}       xpath=//android.widget.HorizontalScrollView/android.widget.Button[4]
${CONTA_EMPRESTIMO_TXT}       xpath=//android.view.View[@content-desc="Empréstimos"]
${CONTA_COBRAR_BTN}           xpath=//android.widget.HorizontalScrollView/android.widget.Button[5]
${CONTA_COBRAR_TXT}           xpath=//android.view.View[@content-desc="Cobrar"]
${CONTA_HISTORICO}            xpath=//android.view.View[@content-desc="Histórico"]
${CONTA_TRANSF_ENVIADA}       xpath=//android.view.View[contains(@content-desc,"Transferência enviada")]
${CONTA_TRANSF_RECEBIDA_J}    xpath=//android.view.View[contains(@content-desc,"Transferência recebida")]
${CONTA_TRANSF_RECEBIDA_E}    xpath=//android.view.View[contains(@content-desc,"Transferência recebida")]
${CONTA_TRANSF_RECEBIDA_I}    xpath=//android.view.View[contains(@content-desc,"Transferência recebida")]


*** Keywords ***
Dado que o usuário está na home page
    Wait Until Element Is Visible    ${HOME_CONTA}
Quando deseja visualizar informações da conta
    Click Element    ${HOME_CONTA}
Então visualiza opções de operações financeiras
    Espera o elemento e verifica o elemento    ${CONTA_SALDO_DISPONIVEL}
    Espera o elemento e verifica o atributo    ${CONTA_SALDO_DISPONIVEL}    content-desc    Saldo disponível
    Espera o elemento e verifica o elemento    ${CONTA_DINHEIRO_GUARDADO}
    Espera o elemento e verifica o atributo    ${CONTA_DINHEIRO_GUARDADO}    content-desc    Dinheiro guardado
    Espera o elemento e verifica o elemento    ${CONTA_DEPOSITAR_BTN}
    Espera o elemento e verifica o atributo    ${CONTA_DEPOSITAR_TXT}    content-desc    Depositar
    Espera o elemento e verifica o elemento    ${CONTA_PAGAR_BTN}
    Espera o elemento e verifica o atributo    ${CONTA_PAGAR_TXT}    content-desc    Pagar
    Espera o elemento e verifica o elemento    ${CONTA_TRANSFERIR_BTN}
    Espera o elemento e verifica o atributo    ${CONTA_TRANSFERIR_TXT}    content-desc    Transferir
    Espera o elemento e verifica o elemento    ${CONTA_EMPRESTIMO_BTN}
    Espera o elemento e verifica o atributo    ${CONTA_EMPRESTIMO_TXT}    content-desc    Empréstimos
    Espera o elemento e verifica o elemento    ${CONTA_COBRAR_BTN}
    Espera o elemento e verifica o atributo    ${CONTA_COBRAR_TXT}    content-desc    Cobrar
Dado que o usuário está na tela de saldo disponível
    Click Element    ${HOME_CONTA}
    Wait Until Element Is Visible    ${CONTA_SALDO_DISPONIVEL}
Quando visualiza o histórico
    Espera o elemento e verifica o elemento    ${CONTA_HISTORICO}
    Espera o elemento e verifica o atributo    ${CONTA_HISTORICO}    content-desc    Histórico
Então tem acesso ao histórico de transações
    Swipe By Percent    50    50    50    -10
    Espera o elemento e verifica o atributo    ${CONTA_TRANSF_ENVIADA}    content-desc    Transferência enviada
    Espera o elemento e verifica o atributo    ${CONTA_TRANSF_RECEBIDA_J}    content-desc    Transferência recebida
    Espera o elemento e verifica o atributo    ${CONTA_TRANSF_RECEBIDA_E}    content-desc    Transferência recebida
    Espera o elemento e verifica o atributo    ${CONTA_TRANSF_RECEBIDA_I}    content-desc    Transferência recebida