*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources1.robot


*** Test Cases ***
user defined keywords without arguments

    Start Browser and Maximize
    Input Text  id:username  varniktech@gmail.com