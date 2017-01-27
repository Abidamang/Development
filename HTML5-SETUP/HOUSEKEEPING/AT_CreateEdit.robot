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
Logon as a Manager navigate to Setup and Select Availability Templates then create a New Template
      AT.Logon With Credentials
      AT.Navigate To Setup and Select
      #AT.Select Tab Create or New
      #AT.Select Tab Create or New
      AT.Select Create or New
      AT.Enter a new Name and Description
      AT.Default Selection in Rotation Area