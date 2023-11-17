*** Settings ***
Library  SeleniumLibrary
*** Variables ***

${var1}  https://amazon.in
${var2}  https://google.com
*** Test Cases ***
multibrowser

     open Browser  ${var1}  Chrome
     maximize browser window

     open Browser  ${var2}  Edge
     maximize browser window
     switch browser  1
     ${url1}=  get location
     log to console  ${url1}
     click link  xpath://a[contains(text(),"Today's Deals")]
     switch browser  2
     ${url2}=  get location
     log to console  ${url2}
     input text  name:q  selenium
     close browser