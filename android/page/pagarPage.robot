*** settings ***
Resource    ../base.robot

*** Variables ***
${CARROSSEL_PAGAR_BTN}               xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${FECHAR_BTN}                        xpath=//android.widget.Button
${PAGAR_COM_PIX}                     xpath=//android.view.View[contains(@content-desc,"Pagar com Pix")]
${PAGAR_FATURA_CARTAO}                      xpath=//android.view.View[contains(@content-desc,"Pagar fatura do cartão")]
${PAGAR_BOLETO}                      xpath=//android.view.View[contains(@content-desc,"Pagar um boleto")]

*** Keywords ***
Quando deseja realizar um Pagamento
    Click Element    ${CARROSSEL_PAGAR_BTN}
Então visualiza a página de pagamentos
    Espera o elemento e verifica o elemento    ${FECHAR_BTN}
    Espera o elemento e verifica o elemento    ${PAGAR_COM_PIX}
    Espera o elemento e verifica o atributo    ${PAGAR_COM_PIX}    content-desc    Pagar com Pix
    Espera o elemento e verifica o elemento    ${PAGAR_FATURA_CARTAO}
    Espera o elemento e verifica o atributo    ${PAGAR_FATURA_CARTAO}    content-desc    Pagar fatura do cartão
    Espera o elemento e verifica o elemento    ${PAGAR_BOLETO}
    Espera o elemento e verifica o atributo    ${PAGAR_BOLETO}    content-desc    Pagar um boleto