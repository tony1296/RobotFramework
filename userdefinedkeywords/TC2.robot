*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources2.robot


*** Test Cases ***
user defined keywords without arguments

    Start Browser and Maximize  https://practice.automationtesting.in/my-account/  Chrome
    Input Text  id:username  varniktech@gmail.com