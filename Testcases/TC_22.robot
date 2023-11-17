*** Settings ***
Library  SeleniumLibrary
*** Variables ***

${var1}  https://practice.automationtesting.in/my-account

*** Test Cases ***
validations2
#page should contain
    open Browser  ${var1}  Chrome
    maximize browser window
    #case1

    page should contain textfield  id:username
    input text  id:username  varniktech@gmail.com
    #case2
    page should contain textfield  id:txtUsername1
    input text  id:txtUsername  Admin
    #case3
    page should not contain textfield  id:txtUsername1
    input text  id:txtUsername  Admin
