*** Settings ***
Library    SeleniumLibrary

Variables    ../Resources/locators.py

*** Keywords ***
Login to MyAccount
        [Arguments]    ${username_data}     ${password_data}
        log     Login to MyAccount
        wait until keyword succeeds    5       2     wait until element is visible      ${username}
        input text    ${username}       ${username_data}
        input password    ${password}       ${password_data}
        click element    ${logintoapp}
