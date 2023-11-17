*** Settings ***
Library  SeleniumLibrary
*** Variables ***

${var1}  https://google.com
${var2}  https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_pushbutton_disabled2

*** Test Cases ***
validations6
#page should contain
    #open Browser  ${var1}  Chrome
    #maximize browser window
    #Case1
    #element should be enabled  name:q
    #case2
    open Browser  ${var2}  Chrome
    maximize browser window
    Select Frame  name:iframeResult
    click button  xpath://*[text()='Try it']
    element should be disabled  xpath://*[text()='My Button']