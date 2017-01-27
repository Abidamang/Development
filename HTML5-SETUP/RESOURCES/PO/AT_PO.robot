*** Settings ***
Library  Selenium2Library


*** Variables ***

${AT_PO_CreateEdit_Tab}  =  xpath=.//*[@id='mainWidgetContent']/ui-view/div[1]/krn-navbar/ul/li[1]/a
${AT_PO_AssignToLoc_Tab} =  xpath=.//*[@id='mainWidgetContent']/ui-view/div[1]/krn-navbar/ul/li[2]/a

${AT_PO_New_Btn}         =  xpath=.//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[1]
${AT_PO_Refresh_Btn}     =  xpath=.//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[5]
${AT_PO_Duplicate_Btn}   =  xpath=.//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[2]
${AT_PO_Edit_Btn}        =  xpath= .//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[3]
${AT_PO_Delete_Btn}      =  xpath=.//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[4]

${AT_PO_New_Return_Btn}  =  xpath.//*[@id='mainWidgetContent']/ui-view/div/div/ng-form/div/button[3]
${AT_PO_New_Refresh_Btn} =  xpath=.//*[@id='mainWidgetContent']/ui-view/div/div/ng-form/div/button[4]
${AT_PO_New_Save_Btn}    =  xpath=.//*[@id='mainWidgetContent']/ui-view/div/div/ng-form/div/button[1]
${AT_PO_New_SaveNew_Btn} =  xpath=.//*[@id='mainWidgetContent']/ui-view/div/div/ng-form/div/button[2]

${AT_PO_New_Name_Box}    =  css=#availabilityTemplateName
${AT_PO_New_Name_Input}  =  AV Template
${AT_PO_New_Des_Box}     =  xpath=.//*[@id='availabilityTemplateDescription']
${AT_PO_New_DesBox_Input}=  The Quick brown fox jumps right over the 3 lazy dogs!

${AT_PO_New_Heading_ChangeColor} =   xpath=.//*[@id='mainWidgetContent']/ui-view/div/div/ng-form/h3

${AT_PO_New_RecurringBox}   =  css=#availabilityTemplateRecurring
${AT_PO_New_Weeks_RadioBtn} =  css=#weeksLabel
${AT_PO_New_Days_RadioBtn}  =  css=#daysLabel

${AT_PO_New_HoursEditor} =     css=.btn.btn-hours-popup.ng-binding
${AT_PO_New_Unavailable} =     css=.ng-binding.ng-scope.btn.btn-unavailable
${AT_PO_New_Unknown}     =     css=.ng-binding.ng-scope.btn.btn-Unknown
${AT_PO_New_Available}   =     css=.ng-binding.ng-scope.btn.btn-Available
${AT_PO_New_Preferred}   =     css=.ng-binding.ng-scope.btn.btn-Preferred
${AT_PO_New_PreferredTimeOff} =  css=.ng-binding.ng-scope.btn.btn-preferred-time-off


*** Keywords ***
Click Tab CreateEdit
  click element  ${AT_PO_CreateEdit_Tab}

Click Tab AssignToLoc
  click element  ${AT_PO_AssignToLoc_Tab}

Default states
  #New Button is endabled.
  element should be enabled   ${AT_PO_New_Btn}
  #Refresh Button is enabled.
  element should be enabled   ${AT_PO_Refresh_Btn}

Click New Button
      select frame    contentPane
      Sleep  2s
      wait until page contains   Availability Templates
      #New Button
      click button   ${AT_PO_New_Btn}
      sleep  2s
      #Retun Bttn
      element should be enabled   ${AT_PO_New_Return_Btn}
      #Refresh Bttn
      element should be enabled   ${AT_PO_Refresh_Btn}

Create New Name
      #Name Edit Box
      input text   ${AT_PO_New_Name_Box}    ${AT_PO_New_Name_Input}
      #Save
      element should be enabled   ${AT_PO_New_Save_Btn}
      #Save and New
      element should be enabled   ${AT_PO_New_SaveNew_Btn}
      #Changed Heading
      element should be visible   ${AT_PO_New_Heading_ChangeColor}
      #Description Box
      input text   ${AT_PO_New_Des_Box}    ${AT_PO_New_DesBox_Input}

Rotation Area By Default
      # Recuring Box Visible
      element should be visible           ${AT_PO_New_RecurringBox}
      # Radio selected for Weeks
      page should contain radio button    ${AT_PO_New_Weeks_RadioBtn}
      # Disable Elements  following items below
      # Hours Editor - Disabled.
      element should be disabled   ${AT_PO_New_HoursEditor}
      # Unavailable
      element should be visible  ${AT_PO_New_Unavailable}
      # Unknown
      element should be visible  ${AT_PO_New_Unknown}
      # Available
      element should be visible  ${AT_PO_New_Available}
      # Prefrred
      element should be visible  ${AT_PO_New_Preferred}
      # PreferredTimeOff
      element should be visible  ${AT_PO_New_PreferredTimeOff}




