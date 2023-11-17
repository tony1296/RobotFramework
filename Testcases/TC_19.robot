*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${URL}  https://amazon.in
*** Test Cases ***
wait commands
    open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    set selenium timeout  5 seconds
    #wait until element contains
    #wait until page contains  Electronics
    #wait until page contains element xpath://a[contains(text(),'c')]
    #click elemnt  xpath://a[contains(text(),'Elecronics')]

    wait until element contains  xpath://a[contains(text(),'Mobiles')]  Mobiles
    click link  xpath://a[contains(text(),'Mobiles')]
    Close Browser