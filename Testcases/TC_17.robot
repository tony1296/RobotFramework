*** Settings ***
Library  SeleniumLibrary
*** Variables ***

${var1}  http://amazon.in
*** Test Cases ***
scrollbar handling

      open Browser  ${var1}  Chrome
      Maximize Browser Window
      execute javascript  window.scrollTo(1,1000)
      sleep  10 seconds