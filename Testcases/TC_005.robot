*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${URL}  https://practice.automationtesting.in/my-account
*** Test Cases ***
Robot First Test Case
    open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Enter username and password  varniktech@gmail.com  varnik@123

*** Keywords ***
Enter username and password
    [Arguments]  ${username}  ${password}
    Input Text  id:username  ${username}
    Input Text  id:password  ${password}
    Click Button  name:login
    Close Browser