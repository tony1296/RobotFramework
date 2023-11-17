*** Settings ***
Library  SeleniumLibrary
*** Variables ***

${var1}  https://amazon.in

*** Test Cases ***
validations1
#page should contain
     open Browser  ${var1}  Chrome
     maximize browser window
     #case1
     page should contain  Today's Deals
     #case2
     #page should contain  Electronics1
     #page should not contain Electronics1
     #click link  xpath://a[contains(text(),"Electronics1")]
     click link  xpath://a[contains(text(),"Today's Deals")]
     close browser