*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
TC_1 variable Test
    ${var1}=  set variable  Hello world
    log to console  ${var1}