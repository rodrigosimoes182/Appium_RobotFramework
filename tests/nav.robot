***Settings***

Resource    ../resources/base.robot

#Executa a keyword antes do testCase
Test Setup      Open Session
#Executa a keyword depois de cada testCase
Test Teardown   Close Session

***Variables***
${TOLBARTITLE}      id=io.qaninja.android.twp:id/toolbarTitle

**Test Cases***

Deve acessar a tela Dialogs do App

    Open Nav
    
    Click Text                      DIALOGS

    Wait Until Element Is Visible   ${TOLBARTITLE}
    Element Text Should Be          ${TOLBARTITLE}   DIALOGS


Deve acessar a tela Forms do App

    Open Nav
    
    Click Text                      FORMS

    Wait Until Element Is Visible   ${TOLBARTITLE}   5
    Element Text Should Be          ${TOLBARTITLE}   FORMS

