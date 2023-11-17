*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${URL}  https://practice.automationtesting.in/my-account
*** Test Cases ***
Take screen shot
    open Browser  ${URL}  ${Browser}
    Maximize Browser Window


    Input Text  id:username  varniktech@gmail.com
    Input Text  id:password  varnik@123
    Click Button  name:login
    set selenium speed  2 seconds
    capture page screenshot  C:\Users\HP\PycharmProjects\RobotFramework\screenshots\TC14.png
    Close Browser
