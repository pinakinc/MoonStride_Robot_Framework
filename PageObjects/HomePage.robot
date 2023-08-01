*** Settings ***
Library    SeleniumLibrary

Variables    ../Resources/locators.py

*** Keywords ***
Navigate to Login
        [Arguments]     ${url}      ${browser}      ${email_data}
        log     Navigate to Login
        open browser    ${url}      ${browser}      options=add_experimental_option("detach", True)
        maximize browser window
        MOUSE OVER    ${readmore}
        wait until element is visible    ${architectpopup}
        wait until keyword succeeds    5       2     click link    ${architectpopup}
        wait until keyword succeeds    5       2     input text    ${email}       ${email_data}
        wait until keyword succeeds    5       2     click button    ${btnsubscribe}
        wait until element is visible       ${btncontinuebrowsing}
        wait until keyword succeeds    5       2     click link    ${btncontinuebrowsing}
        wait until keyword succeeds    5       2     click button    ${btnconsentmain}
        wait until keyword succeeds    5       2     wait until element is visible      ${acceptall}
        wait until keyword succeeds    5       2     click button    ${acceptall}
        wait until keyword succeeds    5       2     mouse over      ${myaccount}
        wait until keyword succeeds    5       2     wait until element is visible      ${btnlogin}
        click link        ${btnlogin}

#Login to application
#        wait until keyword succeeds    5       2     wait until element is visible      ${username}
#        input text    ${username}       chaubalpinakin@gmail.com
#        input password    ${password}       Pc9121975!
#        click element    ${logintoapp}
