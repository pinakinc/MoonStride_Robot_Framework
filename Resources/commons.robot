*** Settings ***
Library    SeleniumLibrary

Variables    ../Resources/locators.py

*** Keywords ***
Launching Browser
        [Arguments]     ${url}      ${browserName}
        log     Launching the browser
        open browser    ${url}      ${browserName}      options=add_experimental_option("detach", True)
        set selenium implicit wait    200 seconds
        maximize browser window
