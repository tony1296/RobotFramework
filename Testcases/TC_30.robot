*** Settings ***
Documentation  Handle JS Confirm in Robot Framework
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Handle JS Confirm
     [Documentation]  This test case verifies that the user is able to Accept/Dismiss a JS Confirm
     ...  and also verify its text
     [Tags]  Smoke
     Open Browser  https://the-internet.herokuapp.com/javascript_alerts  Chrome
     Wait Until Element Is Visible  tag:button  timeout=5
     Click Element  css:li:nth-child(2) > button
     ${message}=  Handle Alert  action=DISMISS
     #Dismiss means cancel button
     Should Be Equal  ${message}  I am a JS Confirm
     Element Text Should Be  id:result  You clicked: Cancel
     Click Element  css:li:nth-child(2) > button
     Handle Alert  action=ACCEPT
     Element Text Should Be  id:result  You clicked: Ok
     Close Browser
