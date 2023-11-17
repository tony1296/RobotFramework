*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${URL}  https://practice.automationtesting.in/my-account
*** Test Cases ***
Test case on login operation

    open Browser  ${URL}  ${Browser}
    Maximize Browser Window

    Input Text  id:username  varniktech@gmail.con
    Input Text  id:password  varnik@123
    Click Button  name:login
    Close Browser