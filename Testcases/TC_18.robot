*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${URL}  https://amazon.in
*** Test Cases ***
mouse operations
    open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    open contextmenu  id:twotabsearchtextbox
    #double click element  id:nav-search-submit-button
    #mouse down  id:twotabsearchtextbox
    #mouse up  id:twotabsearchtextbox
    #mouse over  xpath://*[@id='nav-link-accountList-nav-line-1']
    sleep  10
    Close Browser