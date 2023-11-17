*** Settings ***
Library  SeleniumLibrary
Library  Collections
*** Variables ***

*** Test Cases ***
Runkeyword Test
     ${key_var}=  set variable  log to console
     run keyword  ${key_var}  Srikanth