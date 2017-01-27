*** Settings ***
Resource  ../Resources/AT.robot
Resource  ../Resources/Common.robot

Test Setup     Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER} =      ff
${START_URL} =    http://dal-rc-mss-12/wfc/logon
${LOGIN_ID} =     ATAllowAll
${LOGIN_PSSWD} =  kronites

*** Test Cases ***
Logon as a Manager Navigate to Setup and Select Availability Templates
      AT.Logon With Credentials
      AT.Navigate To Setup and Select
      Sleep  10s