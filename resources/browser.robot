*** Settings ***
Library    Browser

*** Keywords ***
Open Btech Website
    New Browser    chromium    headless=False
    New Context    viewport={'width': 1440, 'height': 900}
    New Page    https://btech.com/en
    Wait For Elements State    css=body    visible    10s

Close Browser Session
    Close Browser
