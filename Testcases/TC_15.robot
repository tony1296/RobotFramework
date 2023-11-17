*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${Browser1}  Chrome
${URL}  https://practice.automationtesting.in/my-account
${URL1}  https://google.com
*** Test Cases ***
closing multiple browsers
    open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  id:username  varniktech@gmail.com
    Input Text  id:password  varnik@123
    Click Button  name:login
    #open browser  https://google.com
    open Browser  ${URL1}  ${Browser}
    Maximize Browser Window
    close all browsers