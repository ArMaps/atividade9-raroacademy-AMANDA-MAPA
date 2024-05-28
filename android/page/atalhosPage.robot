*** settings ***
Resource    ../base.robot

*** Variables ***
${ENCONTRAR_ATALHOS}        xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]
${ENCONTRAR_ATALHOS_TXT}    xpath=//android.view.View[@content-desc="Encontrar atalhos"]

*** Keywords ***
Então visualiza a tela de encontrar atalhos
    Swipe By Percent    50    50    -50    50
    Click Element    ${ENCONTRAR_ATALHOS} 
    Espera o elemento e verifica o elemento    ${ENCONTRAR_ATALHOS}
    Espera o elemento e verifica o atributo    ${ENCONTRAR_ATALHOS_TXT}    content-desc    Encontrar atalhos