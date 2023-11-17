*** Settings ***
Library  SeleniumLibrary
*** Variables ***

${var1}  https://google.com

*** Test Cases ***
validations5
#page should contain
    open Browser  ${var1}  Chrome
    maximize browser window
    #case1
    title should be  Google
    #case2
    #title should be Goo gle