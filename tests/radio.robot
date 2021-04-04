***Settings***

Resource    ../resources/base.robot

#Executa a keyword antes do testCase
Test Setup      Open Session
#Executa a keyword depois de cada testCase
Test Teardown   Close Session

***Test Cases***
Deve Selecionar a opção Python
    Go To Radio Buttons

    ${element}      Set Variable    xpath=//android.widget.RadioButton[contains(@text,'Python')]

    Click Element                   ${element} 
    Wait Until Element Is Visible   ${element} 
    Element Attribute Should Match  ${element}     checked     true
Deve Marcar o Checkbox
    Go To Checkbox

    ${element2}      Set Variable    xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]

    Click Element                   ${element2}
    Wait Until Element Is Visible   id=io.qaninja.android.twp:id/rvContainer
    Element Attribute Should Match  ${element2}     checked     true