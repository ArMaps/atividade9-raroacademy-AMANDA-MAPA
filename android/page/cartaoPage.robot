*** settings ***
Resource    ../base.robot

*** Variables ***
${CARTAO_CREDITO}          xpath=//android.view.View[contains(@content-desc,"Cartão de Crédito")]
${CARTAO_VOLTAR}            xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[1]
${CARTAO_PESQUISA}         xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[2]
${CARTAO_DUVIDA}           xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[3]
${FATURA_ATUAL}           xpath=//android.view.View[@content-desc="Fatura atual"]
${CARTAO_VALOR}            xpath=//android.view.View[@content-desc="R$ 780,72"]
${CARTAO_LIMITE}           xpath=//android.view.View[@content-desc="Limite disponível R$ 806,78"]
${PAGAR_FATURA}            xpath=//android.view.View[@content-desc="Pagar fatura"]
${RESUMO_FATURAS}          xpath=//android.view.View[@content-desc="Resumo de faturas"]
${AJUSTAR_LIMITE}          xpath=//android.view.View[@content-desc="Ajustar limites"]
${CARTAO_VIRTUAL}          xpath=//android.view.View[@content-desc="Cartão virtual"]
${BLOQUEAR_CARTAO}         xpath=//android.view.View[@content-desc="Bloquear cartão"]
${CARTAO_INDICAR}          xpath=//android.view.View[@content-desc="Indicar amigos"]
${PGTO_RECEBIDO}           xpath=//android.view.View[contains(@content-desc,"Pagamento recebido")]
${SUPERMERCADO}            xpath=//android.view.View[contains(@content-desc,"Supermercado")]
${CARTAO_TRANSF_ENVIADA}    xpath=//android.view.View[contains(@content-desc,"Transferência enviada")]

*** Keywords ***
Quando acessa a tela de cartão de crédito
    Click Element    ${CARTAO_CREDITO}
Então visualiza sua fatura atual e os botões
    Espera o elemento e verifica o elemento    ${CARTAO_VOLTAR}
    Espera o elemento e verifica o elemento    ${CARTAO_PESQUISA}
    Espera o elemento e verifica o elemento    ${CARTAO_DUVIDA}
    Espera o elemento e verifica o elemento    ${FATURA_ATUAL}
    Espera o elemento e verifica o atributo    ${FATURA_ATUAL}    content-desc    Fatura atual
    Espera o elemento e verifica o elemento    ${CARTAO_VALOR}   
    Espera o elemento e verifica o atributo    ${CARTAO_VALOR}    content-desc    780,72
    Espera o elemento e verifica o elemento    ${CARTAO_LIMITE}
    Espera o elemento e verifica o atributo    ${CARTAO_LIMITE}    content-desc    Limite disponível
    Espera o elemento e verifica o elemento    ${PAGAR_FATURA}
    Espera o elemento e verifica o atributo    ${PAGAR_FATURA}    content-desc    Pagar fatura
    Espera o elemento e verifica o elemento    ${RESUMO_FATURAS}
    Espera o elemento e verifica o atributo    ${RESUMO_FATURAS}    content-desc    Resumo de faturas
    Espera o elemento e verifica o elemento    ${AJUSTAR_LIMITE}
    Espera o elemento e verifica o atributo    ${AJUSTAR_LIMITE}    content-desc    Ajustar limites
    Espera o elemento e verifica o elemento    ${CARTAO_VIRTUAL}
    Espera o elemento e verifica o atributo    ${CARTAO_VIRTUAL}    content-desc    Cartão virtual
    Swipe By Percent   70    80    0    80
    Espera o elemento e verifica o elemento    ${BLOQUEAR_CARTAO}
    Espera o elemento e verifica o atributo    ${BLOQUEAR_CARTAO}    content-desc    Bloquear cartão
    Espera o elemento e verifica o elemento    ${CARTAO_INDICAR}
    Espera o elemento e verifica o atributo    ${CARTAO_INDICAR}    content-desc    Indicar amigos

Então visualiza o histórico de transações do cartão
    Swipe By Percent    50    50    50    -30
    Espera o elemento e verifica o elemento    ${PGTO_RECEBIDO}
    Espera o elemento e verifica o atributo    ${PGTO_RECEBIDO}    content-desc    Pagamento recebido
    Espera o elemento e verifica o elemento    ${SUPERMERCADO}
    Espera o elemento e verifica o atributo    ${SUPERMERCADO}    content-desc    Supermercado
    Espera o elemento e verifica o elemento    ${CARTAO_TRANSF_ENVIADA}
    Espera o elemento e verifica o atributo    ${CARTAO_TRANSF_ENVIADA}    content-desc    Transferência enviada