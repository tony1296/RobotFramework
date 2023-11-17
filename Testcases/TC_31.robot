*** Settings ***
Documentation  Handle JS Prompt in Robot Framework
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Handle JS Prompt
     [Documentation]  This test case verifies that the user is able to input text, Accept/Dismiss a JS Confirm
     ...  and also verify its text
     [Tags]  Smoke
     Open Browser  https://the-internet.herokuapp.com/javascript_alerts  Chrome
     Wait Until Element Is Visible  tag:button  timeout=5
     Click Element  css:li:nth-child(3) > button
     ${message}=  Handle Alert  action=DISMISS
     #Dismiss means cancel button
     Should Be Equal  ${message}  I am a JS prompt
     Element Text Should Be  id:result  You entered: null
     Click Element  css:li:nth-child(3) > button
     Input Text Into Alert  Selenium  action=ACCEPT
     #Accept means ok button
     Element Text Should Be  id:result  You entered: Selenium
     Close Browser
