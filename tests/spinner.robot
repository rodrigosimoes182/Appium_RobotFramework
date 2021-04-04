***Settings***

Resource    ../resources/base.robot

#Executa a keyword antes do testCase
Test Setup      Open Session
#Executa a keyword depois de cada testCase
Test Teardown   Close Session

***Variables***
${SPINNER}=         id=io.qaninja.android.twp:id/spinnerJob
${LIST_OPTIONS}=    class=android.widget.ListView

***Test Cases***

Deve Selecionar o perfil qa
    Go To Signup Form
    Choice Job  QA
Deve Selecionar o perfil devops
    Go To Signup Form
    Choice Job  DevOps

***Keywords***
Choice Job
    [Arguments]     ${target}
    Click Element                       ${SPINNER}
    Wait Until Element Is Visible       ${LIST_OPTIONS}
    Click Text                          ${target}



    

