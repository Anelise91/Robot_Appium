*** Settings ***    

Resource    ../resources/base.robot

##Executa antes de cada teste
Test Setup       Open Session
##Executa após cada teste
Test Teardown    Close Session

*** Test Cases ***
Acessa a tela Dialogs
    Get Started 
    Open Nav  

    Click Text                       DIALOGS
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/toolbarTitle      
    Element Text Should Be           id=io.qaninja.android.twp:id/toolbarTitle    DIALOGS

Acessa a tela Forms
    Get Started 
    Open Nav    

    Click Text                       FORMS
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/toolbarTitle        
    Element Text Should Be           id=io.qaninja.android.twp:id/toolbarTitle    FORMS

Acessa a tela Avengers
    Get Started 
    Open Nav    

    Click Text                       AVENGERS
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/toolbarTitle        
    Element Text Should Be           id=io.qaninja.android.twp:id/toolbarTitle    AVENGERS


