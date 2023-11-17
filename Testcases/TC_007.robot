*** Settings ***
Library  SeleniumLibrary
Library  Collections
*** Variables ***

*** Test Cases ***
List Test
    ${List1}   Create List    Hello    33    44    world    abcd1234
    ${list_length}=  get length  ${List1}
    log to console   ${list_length}
    ${list_data}=   get Index from list   ${List1}
    log to console    ${list_data}