*** Settings ***
Library  SeleniumLibrary
*** Variables ***

${var1}  http://practice.automationtesting.in
*** Test Cases ***
Navigation commands

      open Browser  ${var1}  Chrome
      go to  https://www.gooogle.com
      ${URL1}=  get location
      log to console  ${URL1}
      go back
      ${URL1}=  get location
      log to console  ${URL1}
