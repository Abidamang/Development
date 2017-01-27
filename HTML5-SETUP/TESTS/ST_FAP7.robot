*** Settings ***
Resource  ../RESOURCES/COMMON.robot
Resource  ../RESOURCES/PO/SETUP_PO.robot
Resource  ../RESOURCES/PO/ST_PO.robot
Resource  ../RESOURCES/ST.robot

Test Setup     Begin Test
Test Teardown  End Test

*** Variables ***
${Users}=  STDelete
${PassW}=  kronites


*** Test Cases ***
Shift Template FAP Test-7
    [Documentation]  Add Disallowed , Edit Disallowed and Delete Allowed
    [Tags]  E2E

    COMMON.Login ST_FAP User Credentials
    SETUP_PO.Search and Select Page ST
    ST.Shift Templates Display
    Shift Templates FAP7 Defualt Buttons Status
    ST.Select Top Row
    ST.Shift Templates Click on Edit
    ST.Edit Enabled But Can Not Edit
    ST.Edit Page Click Retun
    ST.Select Top Row
    ST.Shift Templates Select Top Row and Delete Parmanently


