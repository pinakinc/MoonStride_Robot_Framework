*** Settings ***
Library    String
*** Variables ***
${string}
${str}
*** Test Cases ***
Test Strings
        ${string}=    Set Variable    Age:2|UNACCEPTED
        ${str}=   split string    ${string}    |
        Log       ${str}
        Log       ${str}[0]
        Log       ${str}[1]