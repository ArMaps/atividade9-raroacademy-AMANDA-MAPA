*** settings ***
Resource    ../base.robot

*** Variables ***
${CONTA_EMPRESTIMO}          xpath=//android.widget.HorizontalScrollView/android.widget.Button[4]
${EMPRESTIMO_VOLTAR}        xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[1]
${EMPRESTIMO_DUVIDA}        xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[2]
${EMPRESTIMO_DISPONIVEL}    xpath=//android.view.View[contains(@content-desc,"O valor disponível no momento é de R$")]
${EMPRESTIMO_INFO}          xpath=//android.view.View[@content-desc="Este valor pode mudar diariamente devido à nossa análise de crédito."]
${EMPRESTIMO_ENTENDA}       xpath=//android.view.View[@content-desc="Entenda como funciona >"]
${EMPRESTIMO_NOVO}          xpath=//android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]
${EMPRESTIMO_ATIVO}         xpath=//android.view.View[@content-desc="Você não possui nenhum empréstimo ativo."]

*** Keywords ***
Quando acessa a tela de empréstimo
    Click Element    ${HOME_CONTA}
    Click Element    ${CONTA_EMPRESTIMO}
Então visualiza as informações referentes a empréstimo
    Espera o elemento e verifica o elemento    ${EMPRESTIMO_VOLTAR}
    Espera o elemento e verifica o elemento    ${EMPRESTIMO_DUVIDA}
    Espera o elemento e verifica o elemento    ${EMPRESTIMO_DISPONIVEL}
    Espera o elemento e verifica o atributo    ${EMPRESTIMO_DISPONIVEL}    content-desc     10.000,00
    Espera o elemento e verifica o elemento    ${EMPRESTIMO_INFO}
    Espera o elemento e verifica o atributo    ${EMPRESTIMO_INFO}    content-desc    Este valor pode mudar diariamente devido à nossa análise de crédito.
    Espera o elemento e verifica o elemento    ${EMPRESTIMO_ENTENDA}
    Espera o elemento e verifica o atributo    ${EMPRESTIMO_ENTENDA}    content-desc    Entenda como funciona >
    Espera o elemento e verifica o elemento    ${EMPRESTIMO_NOVO}
    Espera o elemento e verifica o atributo    ${EMPRESTIMO_NOVO}    content-desc    NOVO EMPRÉSTIMO
    Espera o elemento e verifica o elemento    ${EMPRESTIMO_ATIVO}
    Espera o elemento e verifica o atributo    ${EMPRESTIMO_ATIVO}    content-desc    Você não possui nenhum empréstimo ativo.

