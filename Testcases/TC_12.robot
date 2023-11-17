*** Settings ***
Library  SeleniumLibrary
Library  Collections
*** Variables ***
${Browser}  Chrome
${URL}  https://practice.automationtesting.in/my-account
*** Test Cases ***
wait commands
    ${speed}=  get selenium speed
    log to console  ${speed}
    open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    set selenium speed  2 seconds
    Input Text  id:username  varniktech@gmail.com
    Input Text  id:password  varnik@123
    Click Button  name:login
    ${speed}=  get selenium speed
    log to console  ${speed}
    Close Browser