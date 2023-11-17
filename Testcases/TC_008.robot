*** Settings ***
Library  SeleniumLibrary
Library  Collections
*** Variables ***

*** Test Cases ***
For loop test

    FOR  ${i}   IN RANGE   1  10
        log to console  ${i}
    END