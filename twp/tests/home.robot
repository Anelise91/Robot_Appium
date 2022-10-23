*** Settings ***    

Library    AppiumLibrary


*** Test Cases ***
Abrir a tela principal
    Open Application    http://127.0.0.1:4723/wd/hub
## wd/hub endpoint selenium
    ...                 automationName=UiAutomator2
    ...                 platformName=Android 
    ...                 deviceName=Emulator
    ...                 app=${EXECDIR}/app/twp.apk  
    
    Wait Until Page Contains    Training Wheels Protocol    5
    Wait Until Page Contains    Mobile Version              5
    Close Application
