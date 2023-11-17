*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources3.robot
Documentation  This file having testcase of testing ABC functionality
#calling setup and teardown at suite level
Test Setup  Start Browser and Maximize
Test Teardown  close Browser Window


*** Variables ***
#${Browser}  Chrome
#${URL}  https://practice.automationtesting.in/my-account/
*** Test Cases ***
setup and teardown operation:

#[setup] start browser and maximize window
#[Teardown]  close browser window

    Input Text  id:username  varniktech@gmail.com
    Input Text  id:password  varnik@123
    Click Button  name:login
Test case 2:

    Input Text  id:username  varniktech@gmail.com
    Input Text  id:password  varnik@12
    Click Button  name:login
