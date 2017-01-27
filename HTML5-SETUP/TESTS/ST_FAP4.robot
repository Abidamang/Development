*** Settings ***
Resource  ../RESOURCES/COMMON.robot
Resource  ../RESOURCES/PO/SETUP_PO.robot
Resource  ../RESOURCES/PO/ST_PO.robot
Resource  ../RESOURCES/ST.robot

Test Setup     Begin Test
Test Teardown  End Test

*** Variables ***
${Users}=  STAdd
${PassW}=  kronites


*** Test Cases ***
Shift Template FAP Test-4
    [Documentation]  Add Allowed , Edit Disallowed and Delete Disallowed
    [Tags]  E2E

    COMMON.Login ST_FAP User Credentials
    SETUP_PO.Search and Select Page ST

    ST.Shift Templates Display
    Shift Templates FAP4 Defualt Buttons Status
    ST.Select Top Row
    ST.Shift Templates FAP4 Buttons Status After Top Row Selections
    ST.Shift Templates Click on New
    ST.New Page Display
    ST.New Page Click Return
    ST.Select Top Row
    ST.Shift Templates Click on Duplicate
    ST.Duplicate Page Display
    ST.Duplicate Page Button Save Enabled
    ST.Duplicate Page Click Return
    ST.Confirm Window Display
    ST.Confirm Window and Click YES
    ST.Select Top Row
    ST.Shift Templates Click on Edit
    ST.Edit Enabled But Can Not Edit
    ST.Edit Page Click Retun
    ST.Shift Template Select Top Row and Click on Disabled Delete


