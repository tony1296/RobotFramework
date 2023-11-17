*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${Browser}  Chrome
${URL}  https://google.com

*** Test Cases ***
TC_001 Browser Start and Close

    open Browser  ${URL}  ${Browser}
    close Browser

*** Keywords ***
