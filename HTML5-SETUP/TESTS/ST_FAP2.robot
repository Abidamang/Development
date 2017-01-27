*** Settings ***
Library  Selenium2Library
Resource  ../RESOURCES/COMMON.robot
Resource  ../RESOURCES/PO/SETUP_PO.robot
Resource  ../RESOURCES/ST.robot

Test Setup     Begin Test
Test Teardown  End Test

*** Variables ***
${Users}=  STAddEdit
${PassW}=  kronites


*** Test Cases ***
Shift Template FAP Test-2
    [Documentation]  Add Allowed , Edit Allowed and Delete Disallowed
    [Tags]  E2E

    COMMON.Login ST_FAP User Credentials
    SETUP_PO.Search and Select Page ST

    ST.Shift Templates Display
    ST.Shift Templates FAP2 Defualt Buttons Status
    ST.Select Top Row
    ST.Shift Templates FAP2 Buttons Status After Top Row Selections
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
    ST.Edit Page and Add
    ST.Edit Page Click Retun
    ST.Confirm Window Display
    ST.Confirm Window and Click YES
    ST.Shift Template Select Top Row and Click on Disabled Delete


