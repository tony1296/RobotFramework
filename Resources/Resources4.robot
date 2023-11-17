*** Settings ***
Library  SeleniumLibrary
*** Variables ***

${Browser}  Chrome
${URL}  https://practice.automationtesting.in/my-account/

*** Keywords ***
#user defined keywords
Start Browser and Maximize
    open Browser  ${URL}  ${Browser}
    Maximize Browser Window

close Browser Window
    ${Title}=  Get Title
    log  ${Title}
    close Browser

Before Each Test Suite
    log  Before Each Test Suite

After Each Test Suite
    log  After Each Test Suite