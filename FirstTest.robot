*** Settings ***

Library     SeleniumLibrary
Resource    PageObjects/HomePage.robot
Resource    PageObjects/Login.robot
Resource    PageObjects/ProductsSearch.robot
Resource    Resources/commons.robot
Library     DataDriver      Resources/testdata.xlsx     sheet_name=endtoend

Test Template       Basic Navigation

*** Variables ***
${url}      http://clubroom.theinvisiblecollection.com

*** Test Cases ***

Basic Navigation Test using ${email_data} ${username_data} ${password_data}


*** Keywords ***
Basic Navigation
        [Arguments]         ${email_data}       ${username_data}        ${password_data}        ${search_data}
        log     Basic Test Case
        Navigate to Login       ${url}      chrome      ${email_data}
        Login to MyAccount      ${username_data}        ${password_data}
        Product Search select and Add to cart       ${search_data}