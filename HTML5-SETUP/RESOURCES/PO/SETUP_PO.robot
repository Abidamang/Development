*** Settings ***
Library  Selenium2Library


*** Variables ***
${SETUP_SearchField}  id=setupSearch_value
@{Search_Input}=  Shift Templates
${SchedulerSetup_ST}  xpath=//*[@id='setupSearch_dropdown']/div[6]/div/span



*** Keywords ***
Search and Select Page ST
    select frame   xpath=//iframe
    select frame    contentPane
    wait until element is visible   ${SETUP_SearchField}
    input text      ${SETUP_SearchField}  @{Search_Input}[0]
    click element   ${SchedulerSetup_ST}
    Sleep  2s
Search and Select Page ST FAP8
    select frame   xpath=//iframe
    select frame    contentPane
    input text      ${SETUP_SearchField}  @{Search_Input}[0]
    ELEMENT SHOULD NOT BE VISIBLE  ${SchedulerSetup_ST}
