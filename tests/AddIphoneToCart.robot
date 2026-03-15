*** Settings ***
Resource    ../resources/browser.robot
Resource    ../pages/landing_page.robot
Resource    ../utils/navigation.robot

Test Setup    Open Btech Website
Test Teardown    Close Browser Session

*** Test Cases ***
Add iPhone 16 To Cart And Verify
    Search For Product    iphone 16
    First Product Should Have Image
    Add First Product To Cart
    Go To Cart
    Get Url    *=    /cart
    Wait For Condition    Text    css=h2    contains    My items    timeout=10s
