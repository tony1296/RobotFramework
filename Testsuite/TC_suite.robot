*** Settings ***
#each file behave as test suite setup
#each folder and sub folder behave as test suite
#execute before and after between test suites
Library  SeleniumLibrary
Resource  ../Resources/Resources4.robot
Documentation  This file having testcase of testing ABC functionality
#calling setup and teardown at suite level
Test Setup  Start Browser and Maximize
Test Teardown  close Browser Window
Suite Setup  Before Each Test Suite
Suite Teardown  After Each Test Suite

*** Variables ***
#${Browser}  Chrome
#${URL}  https://practice.automationtesting.in/my-account/

*** Test Cases ***
setup and teardown operation:

#[ssetup] Start Browser and Maximize
#[teardown] close browser window
    Input Text  id:username  varniktech@gmail.com
    Input Text  id:password  varnik@123
    Click Button  name:login



Test case 2:

    Input Text  id:username  varniktech@gmail.com
    Input Text  id:password  varnik@123
    Click Button  name:login

