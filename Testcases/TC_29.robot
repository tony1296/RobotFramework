*** Settings ***
Documentation  Handle JS Alerts in Robot Framework
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Handle JS Alerts
     [Documentation]  This test case verifies that the user is able to accept a JS Alert
     ...  and also verify its text
     [Tags]  Smoke
     Open Browser  https://the-internet.herokuapp.com/javascript_alerts  Chrome
     Wait Until Element Is Visible  tag:button  timeout=5
     Click Element  css:li:nth-child(1) > button
     ${message}=  Handle Alert
     Should Be Equal  ${message}  I am a JS Alert
     Element Text Should Be  id:result  You successfully clicked an alert
     Close Browser
