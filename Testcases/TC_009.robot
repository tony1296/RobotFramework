*** Settings ***
Library  SeleniumLibrary
Library  Collections
*** Variables ***

*** Test Cases ***
List Test
    @{List1}  Create list  Hello  33  44  world  abcd1234
    FOR  ${i}  IN  @{list1}
        log to console  ${i}
    END