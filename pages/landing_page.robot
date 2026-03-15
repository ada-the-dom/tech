*** Settings ***
Resource    ../resources/browser.robot

*** Variables ***
# Two search inputs exist on page (mobile + desktop), >> visible=true picks the visible one
${SEARCH_INPUT}              [data-testid="search-input"] >> visible=true
# article elements are product cards, img.object-contain is the product photo
${FIRST_PRODUCT_IMAGE}       css=article:first-of-type img.object-contain
# each product card has a plus button for add-to-cart (img alt="plus")
${ADD_TO_CART_BUTTON}        css=article:first-of-type button:has(img[alt="plus"])
# h1 on search results page shows search query
${SEARCH_RESULTS_HEADING}    css=h1

*** Keywords ***
Search For Product
    [Arguments]    ${product_name}
    Click    ${SEARCH_INPUT}
    Fill Text    ${SEARCH_INPUT}    ${product_name}
    Keyboard Key    press    Enter
    Wait For Elements State    ${SEARCH_RESULTS_HEADING}    visible    10s

First Product Should Have Image
    Wait For Elements State    ${FIRST_PRODUCT_IMAGE}    visible    10s
    ${src}=    Get Attribute    ${FIRST_PRODUCT_IMAGE}    src
    Should Not Be Empty    ${src}

Add First Product To Cart
    Click    ${ADD_TO_CART_BUTTON}
    Sleep    2s

