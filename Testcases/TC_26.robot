*** Settings ***
Library  SeleniumLibrary
*** Variables ***

${var1}  https://www.w3schools.com/jquery/tryit.asp?filename=tryjquery_click

*** Test Cases ***
validations7
    open Browser  ${var1}  Chrome
    maximize browser window
    Select Frame  name:iframeResult
    #case1
    click element  xpath:/html/body/p[1]
    element should not be visible  xpath:/html/body/p[1]
    #case2
    #element should be visible  xpath:/html/body/p[1]