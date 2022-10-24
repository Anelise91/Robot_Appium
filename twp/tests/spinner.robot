*** Settings ***

Resource    ../resources/base.robot

Test Setup       Open Session
Task Teardown    Close Session

*** Variables ***
${SPINNER}         id=io.qaninja.android.twp:id/spinnerJob
${LIST_OPTIONS}    class=android.widget.ListView

*** Test Cases ***
Selecionar perfil de QA no formulário de cadastro
    [Tags]    perfil_qa
    Go To SignUp Form  
    Choice Job            QA

Selecionar perfil de Devops no formulário de cadastro
    [Tags]    perfil_devops
    Go To SignUp Form  
    Choice Job            DevOps

*** Keywords ***
Choice Job
    [Arguments]    ${target}

    Click Element                     ${SPINNER}
    Wait Until Element Is Visible     ${LIST_OPTIONS}
    Click Text                        ${target}









