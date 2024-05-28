*** settings ***
Resource    ../base.robot

*** Variables ***
${HOME_PERFIL_USUARIO}               xpath=//android.widget.ScrollView/android.view.View[1]
${HOME_OCULTAR_SALDO}                xpath=//android.widget.ScrollView/android.widget.Button[1]
${HOME_AJUDA}                        xpath=//android.widget.ScrollView/android.widget.Button[2]
${HOME_INDICAR_AMIGOS}               xpath=//android.widget.ScrollView/android.widget.Button[3]
${FECHAR_INDICAR_AMIGOS}             xpath=//android.widget.ImageView[contains(@content-desc,"Resgate seus amigos")]
${BTN_INDICAR_AMIGOS}                xpath=//android.widget.Button[@content-desc="INDICAR AMIGOS"]
${HOME_NOME_USURARIO}                xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]
${HOME_CONTA}                        xpath=//android.view.View[contains(@content-desc,"Conta")]
${HOME_SALDO_OCULTO}                 xpath=//android.view.View[@content-desc="Conta"]
${HOME_PIX_BTN}                      xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${HOME_PIX_TXT}                      xpath=//android.view.View[@content-desc="Pix"]
${HOME_PAGAR_BTN}                    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${HOME_PAGAR_TXT}                    xpath=//android.view.View[@content-desc="Pagar"]
${PAGAR_PIX}                         xpath=//android.view.View[contais(@content-desc,"Pagar com Pix")]
${HOME_TRANSFERIR_BTN}               xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${HOME_TRANSFERIR_TXT}               xpath=//android.view.View[@content-desc="Transferir"]
${HOME_DEPOSITAR_BTN}                xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${HOME_DEPOSITAR_TXT}                xpath=//android.view.View[@content-desc="Depositar"]
${HOME_EMPRESTIMO_BTN}               xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]
${HOME_EMPRESTIMO_TXT}               xpath=//android.view.View[@content-desc="Empréstimos"]
${HOME_RECARGA_CELULAR_BTN}          xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${HOME_RECARGA_CELULAR_TXT}          xpath=//android.view.View[@content-desc="Recarga de celular"]
${HOME_COBRAR_BTN}                   xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${HOME_COBRAR_TXT}                   xpath=//android.view.View[@content-desc="Cobrar"]
${HOME_DOACAO_BTN}                   xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${HOME_DOACAO_TXT}                   xpath=//android.view.View[@content-desc="Doação"]
${HOME_ENCONTRAR_ATALHOS_BTN}        xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]
${HOME_ENCONTRAR_ATALHOS_TXT}        xpath=//android.view.View[@content-desc="Encontrar atalhos"]
${HOME_MEUS_CARTOES}                 xpath=//android.view.View[@content-desc="Meus cartões"]
${HOME_OFERTA_EMPRESTIMO}            xpath=//android.view.View[@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
${HOME_PLANOS_FUTUROS}               xpath=//android.view.View[@content-desc="Conquiste planos futuros: conheça as opções para guardar dinheiro."]
${HOME_CARTAO_CREDITO}               xpath=//android.view.View[contains(@content-desc,"Cartão de Crédito")]
${HOME_EMPRESTIMO}                   xpath=//android.view.View[contains(@content-desc,"Empréstimo")]
${HOME_INVESTIMENTOS}                xpath=//android.view.View[contains(@content-desc,"Investimentos")]
${HOME_CONHECER_INVESTMENTOS_BTN}    xpath=//android.view.View[@content-desc="Conhecer"]
${HOME_SEGURO_DE_VIDA}               xpath=//android.view.View[contains(@content-desc,"Seguro de vida")]
${HOME_DESCUBRA_MAIS}                xpath=//android.view.View[@content-desc="Descubra mais"]
${HOME_WHATSAPP}                     xpath=//android.view.View[contains(@content-desc,"WhatsApp")]
${HOME_QUERO CONHECER_BTN}           xpath=//android.view.View[@content-desc="Quero conhecer"]
${HOME_INDIQUE_AMIGOS}               xpath=//android.view.View[contains(@content-desc,"Indique seus amigos")]
${HOME_INDICAR_AMIGOS_BTN}           xpath=//android.view.View[@content-desc="Indicar amigos"]

*** Keywords ***
Dado que o usuário está na home
    Wait Until Element Is Visible    ${HOME_PERFIL_USUARIO}

Quando deseja ocultar o saldo
    Click Element    ${HOME_OCULTAR_SALDO}

Então o saldo deve ficar oculto
    Element Should Be Visible    ${HOME_SALDO_OCULTO} 

Quando acessa a página de indicar amigos
    Click Element    ${HOME_INDICAR_AMIGOS}
Então deve acessar a tela de indicação
    Wait Until Element Is Visible    ${FECHAR_INDICAR_AMIGOS}
    Wait Until Element Is Visible    ${BTN_INDICAR_AMIGOS}

Quando visualiza o cabeçalho do app
    Espera o elemento e verifica o elemento        ${HOME_PERFIL_USUARIO}
    Espera o elemento e verifica o elemento        ${HOME_AJUDA}
    Espera o elemento e verifica o elemento        ${HOME_INDICAR_AMIGOS}
    Espera o elemento e verifica o elemento        ${HOME_NOME_USURARIO}
Então deve estar visível o nome do títular da Conta
    Espera o elemento e verifica o atributo    ${HOME_NOME_USURARIO}    content-desc    Olá, Breno Freitas

Então deve estar visível o saldo da conta
    Espera o elemento e verifica o atributo    ${HOME_CONTA}    content-desc    181,79

Então verifico todos elementos do carrossel
    Espera o elemento e verifica o elemento        ${HOME_PIX_BTN}
    Espera o elemento e verifica o atributo        ${HOME_PIX_TXT}    content-desc    Pix
    Espera o elemento e verifica o elemento        ${HOME_PAGAR_BTN}
    Espera o elemento e verifica o atributo        ${HOME_PAGAR_TXT}    content-desc    Pagar
    Espera o elemento e verifica o elemento        ${HOME_TRANSFERIR_BTN}
    Espera o elemento e verifica o atributo        ${HOME_TRANSFERIR_TXT}    content-desc    Transferir
    Espera o elemento e verifica o elemento        ${HOME_DEPOSITAR_BTN}
    Espera o elemento e verifica o atributo        ${HOME_DEPOSITAR_TXT}    content-desc    Depositar
    Espera o elemento e verifica o elemento        ${HOME_EMPRESTIMO_BTN}
    Espera o elemento e verifica o atributo        ${HOME_EMPRESTIMO_TXT}    content-desc    Empréstimo
    Swipe By Percent    50    50    -50    50
    Espera o elemento e verifica o elemento        ${HOME_RECARGA_CELULAR_BTN}
    Espera o elemento e verifica o atributo        ${HOME_RECARGA_CELULAR_TXT}    content-desc    Recarga de celular
    Espera o elemento e verifica o elemento        ${HOME_COBRAR_BTN}
    Espera o elemento e verifica o atributo        ${HOME_COBRAR_TXT}    content-desc    Cobrar
    Espera o elemento e verifica o elemento        ${HOME_DOACAO_BTN}
    Espera o elemento e verifica o atributo        ${HOME_DOACAO_TXT}        content-desc    Doação
    Espera o elemento e verifica o elemento        ${HOME_ENCONTRAR_ATALHOS_BTN}
    Espera o elemento e verifica o atributo        ${HOME_ENCONTRAR_ATALHOS_TXT}    content-desc    Encontrar atalhos

Então visualiza a aba meus cartões, empréstimo e planos futuros
    Espera o elemento e verifica o atributo        ${HOME_MEUS_CARTOES}    content-desc    Meus cartões
    Espera o elemento e verifica o atributo        ${HOME_OFERTA_EMPRESTIMO}    content-desc    10.000,00
    Espera o elemento e verifica o atributo        ${HOME_PLANOS_FUTUROS}    content-desc    Conquiste planos futuros:    

Então visualiza o valor da fatura e limite disponível
    Espera o elemento e verifica o elemento    ${HOME_CARTAO_CREDITO}
    Espera o elemento e verifica o atributo    ${HOME_CARTAO_CREDITO}    content-desc    Cartão de Crédito

Então vizualiza a oppção de realizar empréstimo
    Swipe By Percent    50    50    50    -50
    Espera o elemento e verifica o elemento    ${HOME_EMPRESTIMO}
    Espera o elemento e verifica o atributo    ${HOME_EMPRESTIMO}    content-desc    Empréstimo

Então visualiza a opção de realizar Investimentos
    Swipe By Percent    50    50    50    -50
    Espera o elemento e verifica o elemento    ${HOME_INVESTIMENTOS}
    Espera o elemento e verifica o atributo    ${HOME_INVESTIMENTOS}    content-desc    Investimentos

Então visualiza a opção de fazer seguro de vida
    Swipe By Percent    50    50    50    -50
    Espera o elemento e verifica o elemento    ${HOME_SEGURO_DE_VIDA}
    Espera o elemento e verifica o atributo    ${HOME_SEGURO_DE_VIDA}    content-desc    Seguro de vida

Quando visualiza a aba Descubra mais
    Swipe By Percent    50    50    50    -50
    Espera o elemento e verifica o elemento    ${HOME_DESCUBRA_MAIS}
    Espera o elemento e verifica o atributo    ${HOME_DESCUBRA_MAIS}    content-desc    Descubra mais
Então visualiza WhatsApp e Indique seus amigos
    Swipe By Percent    50    50    50    -50
    Espera o elemento e verifica o elemento    ${HOME_WHATSAPP}
    Espera o elemento e verifica o atributo    ${HOME_WHATSAPP}    content-desc    WhatsApp
    Espera o elemento e verifica o atributo    ${HOME_QUERO CONHECER_BTN}    content-desc    Quero conhecer
    Espera o elemento e verifica o elemento    ${HOME_INDIQUE_AMIGOS}
    Espera o elemento e verifica o atributo    ${HOME_INDIQUE_AMIGOS}    content-desc   Indique seus amigos
    Espera o elemento e verifica o atributo    ${HOME_INDICAR_AMIGOS_BTN}    content-desc    Indicar amigos
    


    



