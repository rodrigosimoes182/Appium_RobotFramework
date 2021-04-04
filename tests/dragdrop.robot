***Settings***

Resource    ../resources/base.robot

#Executa a keyword antes do testCase
Test Setup      Open Session
#Executa a keyword depois de cada testCase
Test Teardown   Close Session

***Test Cases***

Deve mover o hulk pro topo da lista
    Go To Avenger List
    Drag And Drop       io.qaninja.android.twp:id/drag_handle   3   0
    Sleep               5
