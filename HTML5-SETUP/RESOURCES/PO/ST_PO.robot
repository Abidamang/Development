*** Settings ***
Library  Selenium2Library



*** Variables ***
${ST_PO_Text}=          text=Shift Templates
${ST_PO_TopRow}         xpath=//*[contains(@id, 'row0')]/div[2]/div
${ST_PO_Btn_New}        xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[1]
${ST_PO_Btn_Refresh}    xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[5]
${ST_PO_Btn_Duplicate}  xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[2]
${ST_PO_Btn_Edit}       xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[3]
${ST_PO_Btn_Delete}     xpath=//*[@id='mainWidgetContent']/ui-view/div[1]/div/button[4]

${ST_PO_NewPage_Btn_Return}        xpath=//*[@id='mainWidgetContent']/ui-view/ng-form/div/div/button[3]
${ST_PO_DeplicatePage_ShiftName}   xpath=//*[@id='shiftTemplateName']
${ST_PO_DeplicatePage_Btn_Save}    xpath=//*[@id='mainWidgetContent']/ui-view/ng-form/div/div/button[1]
${ST_PO_DeplicatePage_Btn_Return}  xpath=//*[@id='mainWidgetContent']/ui-view/ng-form/div/div/button[3]

${ST_PO_ConfirmWindow}      xpath=//*[@id='ext-element-2']/div[6]/div/div/krn-custom-popup-content/div/div[1]
${ST_PO_ConfirmWindow_Yes}  xpath=//*[@id='ext-element-2']/div[6]/div/div/krn-custom-popup-content/div/div[3]/button[2]

${ST_PO_EditPage_ShiftNameDesc}  xpath=//*[@id='shiftTemplateDescription']
${ST_PO_EditPage_Btn_Return}     xpath=//*[@id='mainWidgetContent']/ui-view/ng-form/div/div/button[3]
${ST_PO_EditPage_Btn_Save}       xpath=//*[@id='mainWidgetContent']/ui-view/ng-form/div/div/button[1]
${ST_PO_EditPage_Btn_SaveNew}    xpath=//*[@id='mainWidgetContent']/ui-view/ng-form/div/div/button[2]

${ST_PO_DeletePage_ConfirmWindow}        xpath=//*[@id='ext-element-2']/div[6]/div/div/krn-custom-popup-content/div/div[1]/h4[1]
${ST_PO_DeletePage_ConfirmWindow_Messg}  xpath=//*[@id='ext-element-2']/div[6]/div/div/krn-custom-popup-content/div/div[2]/div/span
${ST_PO_DeletePage_ConfirmWindow_No}     xpath=//*[@id='ext-element-2']/div[6]/div/div/krn-custom-popup-content/div/div[3]/button[1]
${ST_PO_DeletePage_ConfirmWindow_Yes}    xpath=//*[@id='ext-element-2']/div[6]/div/div/krn-custom-popup-content/div/div[3]/button[2]


*** Keywords ***
New Button Enabled
        element should be enabled   ${ST_PO_Btn_New}
New Button Disabled
        element should be disabled  ${ST_PO_Btn_New}
Refresh Button Enabled
        element should be enabled   ${ST_PO_Btn_Refresh}
Refresh Button Disabled
        element should be disabled  ${ST_PO_Btn_Refresh}
Duplicate Button Enabled
        element should be enabled   ${ST_PO_Btn_Duplicate}
Duplicate Button Disabled
        element should be disabled  ${ST_PO_Btn_Duplicate}
Edit Button Enabled
        element should be enabled   ${ST_PO_Btn_Edit}
Edit Button Disabled
        element should be disabled  ${ST_PO_Btn_Edit}
Delete Button Enabled
        element should be enabled   ${ST_PO_Btn_Delete}
Delete Button Disabled
        element should be disabled  ${ST_PO_Btn_Delete}