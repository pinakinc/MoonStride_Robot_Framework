*** Settings ***
Library    SeleniumLibrary

Variables    ../Resources/locators.py

*** Keywords ***
Product Search select and Add to cart
        [Arguments]     ${search_data}
        log     Product Search select and Add to cart
        press keys    ${searchmenu}      RETURN

        wait until element is enabled    ${search}
        sleep    15 seconds
        seleniumlibrary.input text    ${search}     ${search_data}
        click element    ${srchbtn}
        wait until element is enabled    ${img1}
        click element    ${img1}
        wait until element is enabled    ${addtocart}
        click element    ${addtocart}
        sleep       20 seconds
        wait until element is enabled    ${cart}
        click element    ${cart}
        wait until element is enabled    ${opencart}
        click element    ${opencart}
        wait until element is enabled    ${proceed}
        click element    ${proceed}
        wait until element is enabled    ${proceedchkout}
        click element    ${proceedchkout}