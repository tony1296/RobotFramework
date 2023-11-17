*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources2.robot
Documentation  This file having testcase of testing ABC functionality

*** Variables ***
${Browser}  Chrome
${URL}  https://practice.automationtesting.in/my-account/

*** Test Cases ***
Add Documentation
    [Documentation]  This test case is used to check the login functionality
    # timeout is used to set the exection time

    ${Res}=  Start Browser and Maximize  ${Url}  ${Browser}
    Log  ${Res}
    Input Text  id:username  ${Res} 