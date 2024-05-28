*** Settings ***

Resource    ../base.robot

*** Keywords ***
Espera o elemento e verifica o atributo
    [Arguments]    ${elemento}    ${atributo}    ${valor_atributo}
    Wait Until Element Is Visible        ${elemento}
    Element Attribute Should Match       ${elemento}    ${atributo}    ${valor_atributo}    regexp=true

Espera o elemento e verifica o elemento
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Element Should Be Visible        ${elemento}