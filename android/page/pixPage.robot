*** settings ***
Resource    ../base.robot

*** Variables ***
# PIX
${CARROSSEL_PIX_BTN}                 xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${HOME_PIX_TXT}                      xpath=//android.view.View[@content-desc="Pix"]
${FECHAR_PIX}                        xpath=//android.widget.Button[1]
${PIX_PAGAR}                         xpath=//android.widget.Button[2]
${PIX_TRANSFERIR}                    xpath=//android.widget.Button[3]
${PIX_COBRAR}                        xpath=//android.widget.Button[4]
${MINHAS_CHAVES}                     xpath=//android.view.View[@content-desc="Minhas chaves"]
${MEU_LIMITE}                        xpath=//android.view.View[@content-desc="Meu limite Pix"]
${ME_AJUDA}                          xpath=//android.view.View[@content-desc="Me ajuda"]

*** Keywords ***
Quando acessa a tela Pix
    Click Element    ${CARROSSEL_PIX_BTN}
Então visualiza a tela minha área Pix
    Espera o elemento e verifica o elemento    ${FECHAR_PIX}
    Espera o elemento e verifica o elemento    ${PIX_PAGAR}
    # Espera o elemento e verifica o atributo    ${PIX_PAGAR}    index    1
    Espera o elemento e verifica o elemento    ${PIX_TRANSFERIR}
    # Espera o elemento e verifica o atributo    ${PIX_TRANSFERIR}    index    transferir
    Espera o elemento e verifica o elemento    ${PIX_COBRAR}
    # Espera o elemento e verifica o atributo    ${PIX_COBRAR}    content-desc    cobrar
    Espera o elemento e verifica o elemento    ${MINHAS_CHAVES}
    Espera o elemento e verifica o atributo    ${MINHAS_CHAVES}    content-desc    Minhas chaves
    Espera o elemento e verifica o elemento    ${MEU_LIMITE}
    Espera o elemento e verifica o atributo    ${MEU_LIMITE}    content-desc    Meu limite Pix
    Espera o elemento e verifica o elemento    ${ME_AJUDA}
    Espera o elemento e verifica o atributo    ${ME_AJUDA}    content-desc    Me ajuda