*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${URL}  https://google.com
*** Test Cases ***
Test case on textbox handling
    open Browser  ${URL}  ${Browser}

    Maximize Browser Window
    #Set Selenium Speed 2seconds
    Input Text  name:q  selenium
    Set Selenium Speed  2seconds
    click Button  name:btnK
    close Browser