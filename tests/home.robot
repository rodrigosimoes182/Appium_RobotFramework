***Settings***

Library     AppiumLibrary

#{
#  "automationName": "UiAutomator2",
#  "platformName": "Android",
#  "deviceName": "Android Emulator",
#  "app": "/Users/rodrigosimoes/Documents/Projetos/twd/app/twp.apk",
#  "udid": "emulator-5554"
#}

**Test Cases***

Deve abrir a tela principal do App
    Open Application        http://localhost:4723/wd/hub
    ...         automationName=UiAutomator2
    ...         platformName=Android
    ...         deviceName=Android Emulator
    ...         app=${EXECDIR}/app/twp.apk
    ...         udid=emulator-5554

    Wait Until Page Contains        Training Wheels Protocol     5
    Wait Until Page Contains        Mobile Version
    Close Application