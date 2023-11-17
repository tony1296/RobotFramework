*** Settings ***
Library  SeleniumLibrary
Library  Collections
*** Variables ***
${Browser}  Chrome
${URL}  https://practice.automationtesting.in/my-account
*** Test Cases ***
sleepwait commands
    open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    ${default_T}=  get selenium implicit wait
    log to console  ${default_T}
    set selenium implicit wait  20 seconds
    ${default_T}=  get selenium implicit wait
    log to console  ${default_T}
    Input Text  id:username  varniktech@gmail.com
    Input Text  id:password  varnik@123
    Click Button  name:login
    Close Browser