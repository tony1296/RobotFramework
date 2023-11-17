*** Settings ***
Library  SeleniumLibrary
Library  ../JSONfilehandling/locators.py

*** Variables ***
${Browser}  Chrome
${URL}  https://practice.automationtesting.in/my-account


*** Test Cases ***
Robot First Test Case
   open Browser  ${URL}  ${Browser}
   Maximize Browser Window


   ${username}=  Read Element Locator  Login.username_textbox_id
   ${password}=  Read Element Locator  Login.password_textbox_id
   ${loginbutton}=  Read Element Locator  Login.click_button_name


   Input Text  id:${username}  varniktech@gmail.com
   Input Text  id:${password}  varnik@123
   Click Button  name:${loginbutton}


*** Keywords ***
Read Element Locator

   [Arguments]  ${JsonPath}
   ${result}=  read_locator_from_json  ${JsonPath}
   [return]  ${result}

#https://robotframework.org/Selenium2Library/Selenium2Library.html
#https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html