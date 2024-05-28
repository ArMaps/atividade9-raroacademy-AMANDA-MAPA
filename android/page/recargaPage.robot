*** settings ***
Resource    ../base.robot

*** Variables ***
${RECARGA_CELULAR_BTN}          xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${FECHAR_BTN}                   xpath=//android.widget.Button
${TELA_RECARGA}                 xpath=//android.widget.EditText

*** Keywords ***
Quando acessa a tela de recarga
    Swipe By Percent    50    50    -50    50
    Click Element    ${RECARGA_CELULAR_BTN}
Então visualiza a tela de recarga
    Espera o elemento e verifica o elemento    ${FECHAR_BTN}
    Espera o elemento e verifica o elemento    ${TELA_RECARGA}
    Input Text                       ${TELA_RECARGA}    ${31970707070}