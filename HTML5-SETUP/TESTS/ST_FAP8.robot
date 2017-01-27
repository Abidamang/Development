*** Settings ***
Library  Selenium2Library
Resource  ../RESOURCES/COMMON.robot
Resource  ../RESOURCES/PO/SETUP_PO.robot

Test Setup     Begin Test
Test Teardown  End Test

*** Variables ***
${Users}=  STNone
${PassW}=  kronites


*** Test Cases ***
Shift Template FAP Test-8
    [Documentation]  Add Disallowed , Edit Disallowed and Delete Disallowed
    [Tags]  E2E
    COMMON.Login ST_FAP User Credentials
    SETUP_PO.Search and Select Page ST FAP8
