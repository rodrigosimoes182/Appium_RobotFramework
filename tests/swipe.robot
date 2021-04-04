***Settings***

Resource    ../resources/base.robot

#Executa a keyword antes do testCase
Test Setup      Open Session
#Executa a keyword depois de cada testCase
Test Teardown   Close Session

***Variables***
${BTNREMOVE}=         id=io.qaninja.android.twp:id/btnRemove

***Test Cases***

Deve remover capitao america
    Go To Avenger List
    #Função Swipe por Porcentagem   x.orig  y.orig  x.dest y.dest
    Swipe By Percent                88.88   18.22   47.22   18.22
    Wait Until Element Is Visible   ${BTNREMOVE}
    Click Element                   ${BTNREMOVE}
    Sleep                             5