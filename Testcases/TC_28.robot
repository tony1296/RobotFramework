*** Settings ***
Documentation  Iframes in Robot Framework
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify that the values can be read from a Nested Iframe
     [Documentation]  This test case verifies that a string can be read from a Nested Iframe.
     [Tags]  Regression
     Open Browser  https://the-internet.herokuapp.com/nested_frames  Chrome
     Wait Until Element Is Visible  css:[frameborder="1"]  timeout=5
     Select Frame  css:[src="/frame_top"]
     Select Frame  css:[src="/frame_left"]
     Current Frame Should Contain  LEFT
     Unselect Frame
     Select Frame  css:[src="/frame_top"]
     Select Frame  css:[src="/frame_middle"]
     Current Frame Should Contain  MIDDLE
     Unselect Frame
     Select Frame  css:[src="/frame_top"]
     Select Frame  css:[src="/frame_right"]
     Current Frame Should Contain  RIGHT
     Unselect Frame
     Select Frame  css:[src="/frame_bottom"]
     Current Frame Should Contain  BOTTOM
     Unselect Frame

