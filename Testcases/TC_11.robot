*** Settings ***
Library  SeleniumLibrary
Library  Collections
*** Variables ***

*** Test Cases ***
Runkeywordif Test

     ${var}=  set variable  NO
     run keyword if  '${var}'=='YES'  log to console  Value Found
     run keyword if  '${var}'=='NO'  log to console  Value Not Found