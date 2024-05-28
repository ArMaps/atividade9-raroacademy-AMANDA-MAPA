*** settings ***
Resource    ../base.robot

*** Variables ***
${DEPOSITAR}         xpath=//android.widget.HorizontalScrollView/android.widget.Button[1]
${COMO_VOCE_QUER}    xpath=//android.view.View[contains(@content-desc,"Como você quer")]
${PIX}               xpath=//android.view.View[contains(@content-desc,"Pix")]
${BOLETO}            xpath=//android.view.View[contains(@content-desc,"Boleto")]
${TED_DOC}           xpath=//android.view.View[contains(@content-desc,"Pode ter custo e cai somente em horário")]
${TRAZER_SALARIO}    xpath=//android.view.View[contains(@content-desc,"Trazer seu salário")]

*** Keywords ***
Quando acessa a tela deposito
    Click Element    ${HOME_CONTA}
    Click Element    ${DEPOSITAR}

Então visualiza as opções de depósito
    Espera o elemento e verifica o atributo    ${COMO_VOCE_QUER}    content-desc  Como você quer depositar na sua conta do Nubank      
    Espera o elemento e verifica o atributo    ${PIX}    content-desc    Sem custo e cai na hora
    Espera o elemento e verifica o atributo    ${BOLETO}     content-desc    Boleto    
    Espera o elemento e verifica o atributo    ${TED_DOC}    content-desc    TED    
    Espera o elemento e verifica o atributo    ${TRAZER_SALARIO}    content-desc    Trazer seu salário    