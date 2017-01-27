*** Settings ***
Resource  ../Resources/PO/LOGON_PO.robot
Resource  ../Resources/PO/SETUP_PO.robot
Resource  ../Resources/PO/AT_PO.robot


*** Variables ***

#SETUP PAGE - Search for the Item
${SEARCH_INPUT} =  Availability Templates
${SEARCH_ITEM_SELECT_XPATH}=   xpath=.//*[@id='setupAutoCompleteContainer']/div/div[2]/ul/li[2]


*** Keywords ***
Logon With Credentials
    LOGON_PO.Load
    LOGON_PO.Verify Page
    LOGON_PO.Logon ID and Password

Navigate To Setup and Select
    SETUP_PO.Select Setup Page
    Sleep  20s

Select Create or New
    AT_PO.Click New Button


Enter a new Name and Description
    AT_PO.Create New Name

Default Selection in Rotation Area
    AT_PO.Rotation Area By Default