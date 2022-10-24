*** Settings ***

Resource    ../resources/base.robot

Test Setup       Open Session
Task Teardown    Close Session

*** Variables ***
${BTN_REMOVE}    id=io.qaninja.android.twp:id/btnRemove

*** Test Cases ***
Remover capitão america
    Go To Avenger List 

    Swipe By Percent                    88.88    18.22    47.22    18.22
    
    Wait Until Element Is Visible       ${BTN_REMOVE}    
    Click Element                       ${BTN_REMOVE}
    Wait Until Page Does Not Contain    Capitão América
    