##Arquivo com configs usadas em todos os CT

*** Settings ***    

Library     AppiumLibrary
Library     libs/extend.py
Resource    helpers.robot

*** Keywords ***
Open Session
    Set Appium Timeout  5
    ## wd/hub endpoint selenium
    Open Application    http://127.0.0.1:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android 
    ...                 deviceName=Emulator
    ...                 app=${EXECDIR}/app/twp.apk  
    ##EXECDIR var amb robot traz diretorio de execução do projeto
    Get Started

Close Session
    Capture Page Screenshot
    Close Application


