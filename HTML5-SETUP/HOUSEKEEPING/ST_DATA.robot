*** Settings ***

Library  Selenium2Library
Resource  ../RESOURCES/COMMON.robot
Resource  ../RESOURCES/PO/SETUP_PO.robot
Resource  ../RESOURCES/ST.robot

Library           String
Library   Collections
Library   documentation

Test Setup     Begin Test
Test Teardown  End Test

*** Variables ***
${Users}=  STAll
${PassW}=  kronites

*** Test Cases ***
CasesTest Starts
    COMMON.Login ST_FAP User Credentials
    SETUP_PO.Search and Select Page ST
    Sleep  2s
    ST.Shift Templates Display
    ST.Select Top Row
    Sleep  2s
    click button  xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[1]
    Sleep  2s

    @{MyList}=  CREATE LIST  AA  BB  CC  DD  EE  FF  GG  HH  II  JJ  KK  LL  MM
    :FOR  ${Elements}  IN  @{MyList}
    \  click element  xpath=//*[@id='shiftTemplateName']
    \  Sleep  1s
    \  input text  xpath=//*[@id='shiftTemplateName']   ${Elements}
    \  input text  xpath=//*[@id='shiftTemplateDescription']  Test Descritpion
    \  Sleep  1s
    \  click element   xpath=//*[contains(@id, 'row0')]/div[10]
    \  Sleep  1s
    \  input text      xpath=//*[contains(@id,'textboxeditorjqxWidget')]  7a
    \  Sleep  1s
    \  click element   xpath=//*[@id='shiftTemplateDescription']
    \  Sleep  1s
    \  click element     xpath=//*[contains(@id, 'row0')]/div[12]
    \  Sleep  1s
    \  input text      xpath=//*[contains(@id,'textboxeditorjqxWidget')]  4p
    \  Sleep  1s
    \  click button  //*[@id='mainWidgetContent']/ui-view/ng-form/div/div/button[2]   #  SAVE&NEW
    \  Sleep  1s




