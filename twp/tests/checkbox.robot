*** Settings ***

Resource    ../resources/base.robot

Test Setup       Open Session
Task Teardown    Close Session

*** Test Cases ***
Selecionar opção Robot Framework
    Go To CheckBox

    ${element}=    Set Variable       xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]

    Click Element                     ${element}
    Wait Until Element Is Visible     id=io.qaninja.android.twp:id/rvContainer
    Element Attribute Should Match    ${element}    checked    true
