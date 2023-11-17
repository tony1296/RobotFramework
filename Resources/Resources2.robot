*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
#user defined keywords
Start Browser and Maximize
    [documentation]  This keyword is to start and maximize the browser window
    [Arguments]  ${UserURL}  ${InputBrowser}
    open Browser  ${UserURL}  ${InputBrowser}
    Maximize Browser Window
    ${Title}=  get Title
    [Return]  ${Title}