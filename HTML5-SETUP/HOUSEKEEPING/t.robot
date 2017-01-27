*** Settings ***
Library  Selenium2Library
Resource  ../RESOURCES/COMMON.robot
Resource  ../RESOURCES/PO/SETUP_PO.robot
Resource  ../RESOURCES/PO/ST_PO.robot


Resource   ../Resources/Common.robot

Test Setup  Begin Test
Test Teardown  End Test

Library           String
Library   Collections
Library   documentation

*** Variables ***
${Users}=  STAll
${PassW}=  kronites




*** Test Cases ***
Testing IE
#    COMMON.Begin Test
    COMMON.Login ST_FAP User Credentials
    SETUP_PO.Search and Select Page ST
#    COMMON.End Test



#    ST_PO.Click on New Button and Verify


#For-Loop-In-Range
#    : FOR    ${INDEX}    IN RANGE    1    3
#    \    Log    ${INDEX}
#    \    ${RANDOM_STRING}=    Generate Random String    ${INDEX}
#    \    Log    ${RANDOM_STRING}
#


#For-Loop-Elements
#    @{ITEMS}    Create List    Star Trek    Star Wars    Perry Rhodan
#    :FOR    ${ELEMENT}    IN    @{ITEMS}
#    \    Log    ${ELEMENT}
#    \    ${ELEMENT}    Replace String    ${ELEMENT}    ${SPACE}    ${EMPTY}
#    \    Log    ${ELEMENT}


#For-Loop-Exiting
#    @{ITEMS}    Create List    Good Element 1    Break On Me    Good Element 2
#    :FOR    ${ELEMENT}    IN    @{ITEMS}
#    \    Log    ${ELEMENT}
#    \    Run Keyword If    '${ELEMENT}' == 'Break On Me'    Exit For Loop
#    \    Log    Do more actions here ...

