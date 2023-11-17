*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${URL}  https://ebay.com
*** Test Cases ***
Test case on link handling

    open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Click Link  xpath://a[text()='register']