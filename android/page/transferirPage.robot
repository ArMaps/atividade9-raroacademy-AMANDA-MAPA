*** settings ***
Resource    ../base.robot

*** Variables ***
${HOME_TRANSFERIR_BTN}               xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${FECHAR_TRANSFERIR}                 xpath=//android.widget.Button[1]
${QRCODE_TRANSFERIR}                 xpath=//android.widget.Button[2]
${TELA_TRANFERIR}                    xpath=//android.widget.EditText[@text="R$ 0,00"]

*** Keywords ***
Quando acessa a tela de transferir
    Click Element    ${HOME_TRANSFERIR_BTN}
Então visualiza a tela de transferências
    Espera o elemento e verifica o elemento    ${FECHAR_TRANSFERIR}
    Espera o elemento e verifica o elemento    ${QRCODE_TRANSFERIR}
    Espera o elemento e verifica o elemento    ${TELA_TRANFERIR}
    Input Text                       ${TELA_TRANFERIR}    ${1551}