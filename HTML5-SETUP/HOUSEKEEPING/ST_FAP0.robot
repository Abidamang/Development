*** Settings ***
Library  Selenium2Library

*** Variables ***
${URL} =


*** Test Cases ***
Begain Test
    [Tags]  Smoke
    #Open Browser   http://dal-rc-ora-12/wfc/logon
    Open Browser   http://dal-product-mss/wfc/logon
    Input Text     id=username   STAll
    Input Text     id=passInput  kronites
    Click Button   id=loginSubmit
    Sleep  15s

    #Select Frame   xpath=//iframe
    #input text     id=setupAutoCompleteInput  Shift Templates
    #input text      xpath=//*[contains(@id, 'setup')]  Shift Templates
    #select frame    contentPane

    select frame   xpath=//iframe
    #Sleep  3s
    select frame    contentPane
    #CLICK ELEMENT   id=setupSearch_value
    input text      id=setupSearch_value  Shift Templates
    Sleep  2s
    #wait until page contains  Scheduler Setup
    #click element  xpath=//*[@id='setupAutoCompleteContainer']/div/div[2]/ul/li[2]
    click element   xpath=//*[@id='setupSearch_dropdown']/div[6]/div/span
    Sleep  2s
    select frame   contentPane
    Sleep  3s
    wait until page contains  text=Shift Templates
    Sleep  2s
    element should be enabled   xpath = //*[@id='mainWidgetContent']/ui-view/div[1]/div/button[1]
    element should be enabled   xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[5]
    element should be disabled  xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[2]
    element should be disabled  xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[3]
    element should be disabled  xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[4]
    Sleep  3s
    click element  xpath=//*[contains(@id, 'row0')]/div[2]/div
    Sleep  2s
    element should be enabled   xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[1]
    element should be enabled   xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[2]
    element should be enabled   xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[3]
    element should be enabled   xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[4]
    element should be enabled   xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[5]
    Sleep  2s
    click element  xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[1]
    Sleep  2s
    click element  xpath=//*[@id='mainWidgetContent']/ui-view/ng-form/div/div/button[3]
    Sleep  2s
    #select a row
    click element  xpath=//*[contains(@id, 'row0')]/div[2]/div
    Sleep  2s
    # Duplicate
    click element  xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[2]
    Sleep  2s
    textfield should contain  xpath=//*[@id='shiftTemplateName']  Copy of
    Sleep  2s
    # Save is enable
    element should be enabled  xpath=//*[@id='mainWidgetContent']/ui-view/ng-form/div/div/button[1]
    # Retun
    click element  xpath=//*[@id='mainWidgetContent']/ui-view/ng-form/div/div/button[3]
    Sleep  2s
    #Confirm Window
    element should be visible  xpath=//*[@id='ext-gen1018']/div[6]/div/div/krn-custom-popup-content/div/div[1]/h4[1]
    Sleep  2s
    #Yes
    click element  xpath=//*[@id='ext-gen1018']/div[6]/div/div/krn-custom-popup-content/div/div[3]/button[2]
    Sleep  2s
    #select a row
    click element  xpath=//*[contains(@id, 'row0')]/div[2]/div
    Sleep  2s
    #Edit
    click element  xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[3]
    Sleep  2s
    input text  xpath=.//*[@id='shiftTemplateDescription']   Testing
    element should be enabled  xpath=//*[@id='mainWidgetContent']/ui-view/ng-form/div/div/button[1]
    Sleep  2s
    click element  xpath=//*[@id='mainWidgetContent']/ui-view/ng-form/div/div/button[3]
    Sleep  2s
    #Confirm Window
    element should be visible  xpath=//*[@id='ext-gen1018']/div[6]/div/div/krn-custom-popup-content/div/div[1]/h4[1]
    Sleep  2s
    #Yes
    click element  xpath=//*[@id='ext-gen1018']/div[6]/div/div/krn-custom-popup-content/div/div[3]/button[2]
    Sleep  2s
    #select a row
    click element  xpath=//*[contains(@id, 'row0')]/div[2]/div
    ${RowDataBeforeDel}=  get text  xpath=//*[contains(@id, 'row0')]/div[2]/div

    Sleep  2s
    #Delete
    click element  xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[4]
    Sleep  2s
    #Confirm window
    element should be visible  xpath=//*[@id='ext-gen1018']/div[6]/div/div/krn-custom-popup-content/div/div[1]/h4[1]
    element should contain   xpath=//*[@id='ext-gen1018']/div[6]/div/div/krn-custom-popup-content/div/div[2]/div/span   Do you want to delete it now?
    # No
    element should be enabled  xpath=//*[@id='ext-gen1018']/div[6]/div/div/krn-custom-popup-content/div/div[3]/button[1]
    #Yes
    element should be enabled  xpath=//*[@id='ext-gen1018']/div[6]/div/div/krn-custom-popup-content/div/div[3]/button[2]
    Sleep  2s
    #Yes - click
    click element  xpath=//*[@id='ext-gen1018']/div[6]/div/div/krn-custom-popup-content/div/div[3]/button[2]
    Sleep  2s

    #Refresh
    click element  xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[5]
    Sleep  2s
    #select a row
    click element  xpath=//*[contains(@id, 'row0')]/div[2]/div

    #Verify Data not there
    element should not contain   xpath=//*[contains(@id, 'row0')]/div[2]/div  ${RowDataBeforeDel}

    Close browser
