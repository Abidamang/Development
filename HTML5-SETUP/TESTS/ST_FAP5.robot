*** Settings ***
Resource  ../RESOURCES/COMMON.robot
Resource  ../RESOURCES/PO/SETUP_PO.robot
Resource  ../RESOURCES/PO/ST_PO.robot
Resource  ../RESOURCES/ST.robot

Test Setup     Begin Test
Test Teardown  End Test

*** Variables ***
${Users}=  STEditDelete
${PassW}=  kronites


*** Test Cases ***
Shift Template FAP Test-5
    [Documentation]  Add Disallowed , Edit Allowed and Delete Allowed
    [Tags]  E2E

    COMMON.Login ST_FAP User Credentials
    SETUP_PO.Search and Select Page ST
    ST.Shift Templates Display
    Shift Templates FAP5 Defualt Buttons Status
    ST.Select Top Row
    ST.Shift Templates FAP5 Buttons Status After Top Row Selections
    ST.Shift Templates Click on Edit
    ST.Edit Page and Add
    ST.Edit Page Click Retun
    ST.Confirm Window Display
    ST.Confirm Window and Click YES
    ST.Shift Template Select Top Row and Click on Disabled Delete


