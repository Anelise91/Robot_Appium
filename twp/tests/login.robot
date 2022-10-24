*** Settings ***

Resource    ../resources/base.robot

Test Setup       Open Session
Task Teardown    Close Session

*** Test Cases ***
Realizar Login
    Go To Login Form

    Input Text                  id=io.qaninja.android.twp:id/etEmail        eu@papito.io
    Input Text                  id=io.qaninja.android.twp:id/etPassword     qaninja 
    Click Element               id=io.qaninja.android.twp:id/btnSubmit
    Wait Until Page Contains    Show! Suas credenciais são validas.


