*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources2.robot

*** Variables ***
${Browser}  Chrome
${URL}  https://practice.automationtesting.in/my-account/

*** Test Cases ***
user defined keywords with arguments

    ${Res}=  Start Browser and Maximize  ${Url}  ${Browser}
    Log  ${Res}
    Input Text  id:username  varniktech@gmail.com