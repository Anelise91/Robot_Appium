*** Settings ***

Resource    ../resources/base.robot

Test Setup       Open Session
Task Teardown    Close Session

*** Test Cases ***
Selecionar opção Python
    Go To Radio Buttons

    ${element}    Set Variable       xpath=//android.widget.RadioButton[contains(@text, 'Python')]

    Click Element                     ${element}
    Wait Until Element Is Visible     ${element}
    Element Attribute Should Match    ${element}    checked    true
