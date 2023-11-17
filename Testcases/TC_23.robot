*** Settings ***
Library  SeleniumLibrary
*** Variables ***

${var1}  https://amazon.in

*** Test Cases ***
validations4
#page should contain
    open Browser  ${var1}  Chrome
    maximize browser window
    #case1
    element text should be  xpath://*[@id="nav-link-accountList-nav-line-1"]  Hello, sign in
    input text  id:twotabsearchtextbox  hi