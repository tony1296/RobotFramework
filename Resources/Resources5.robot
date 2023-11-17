*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/userkeywords.py
*** Variables ***

${Browser}  Chrome
${URL}  https://practice.automationtesting.in/my-account/

*** Keywords ***
#user defined keywords
Start Browser and Maximize
    open Browser  ${URL}  ${Browser}
    Maximize Browser Window


close Browser Window
    ${Title}=   Get Title
    log  ${Title}
    close Browser

Before Each Test Suite
    log  Before Each Test Suite


After Each Test Suite
    log  After Each Test Suite

Create Folder at Runtime
    [arguments]  ${foldername}  ${subfoldername}
    create_folder  foldername
    create_sub_folder  subfoldername
    Log  "Task done successfully"

Concatenate Username and Password
    [arguments]  ${username}  ${password}
    ${resultvalue}=  concatenate_two_values  username  password
    log  ${resultvalue}