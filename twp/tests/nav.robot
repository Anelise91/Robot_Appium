*** Settings ***    

Resource    ../resources/base.robot

##Executa antes de cada teste
Test Setup       Open Session
##Executa após cada teste
Test Teardown    Close Session

*** Variables ***
${TOOLBAR_TITLE}    id=io.qaninja.android.twp:id/toolbarTitle

*** Test Cases ***
Acessa a tela Dialogs
    Open Nav  

    Click Text                       DIALOGS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}      
    Element Text Should Be           ${TOOLBAR_TITLE}    DIALOGS

Acessa a tela Forms
    Open Nav    

    Click Text                       FORMS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}        
    Element Text Should Be           ${TOOLBAR_TITLE}    FORMS

Acessa a tela Avengers 
    Open Nav    

    Click Text                       AVENGERS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}        
    Element Text Should Be           ${TOOLBAR_TITLE}    AVENGERS


