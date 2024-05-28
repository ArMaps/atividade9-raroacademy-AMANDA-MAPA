*** settings ***
Resource    ../base.robot

*** Variables ***
${DOACAO_BTN}        xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${DOACAO_TXT}                   xpath=//android.view.View[@content-desc="Doação"]

*** Keywords ***
Então visualiza a tela de doação
    Swipe By Percent    50    50    -50    50
    Click Element    ${DOACAO_BTN}
    Espera o elemento e verifica o elemento        ${DOACAO_BTN}
    Espera o elemento e verifica o atributo        ${DOACAO_TXT}        content-desc    Doação

    