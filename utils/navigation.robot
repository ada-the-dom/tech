*** Settings ***
Resource    ../resources/browser.robot

*** Variables ***
${CART_LINK}       css=a[href="/en/cart"]

*** Keywords ***
Go To Cart
    Click    ${CART_LINK}
    Wait For Elements State    css=h2    visible    10s
