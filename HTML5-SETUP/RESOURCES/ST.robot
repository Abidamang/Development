*** Settings ***
Library  Selenium2Library
Resource  ../RESOURCES/PO/ST_PO.robot


*** Variables ***
${RowDataBeforeDel}
#${RowDataBeforeDel}=  get text  ${ST_PO_TopRow}


*** Keywords ***
Shift Templates Display
        select frame   setupMainPageIframe
        wait until element is visible  ${ST_PO_TopRow}  timeout=5s

Select Top Row
        click element  ${ST_PO_TopRow}

Shift Templates FAP1 Defualt Buttons Status
        Shift Templates Buttons New Refresh are Enabled
        Shift Templates Buttons Duplicate Edit Delete Disabled

Shift Templates FAP1 Buttons Status After Top Row Selections
        Shift Template All Button Enabled

Shift Template All Button Enabled
        New Button Enabled
        Duplicate Button Enabled
        Refresh Button Enabled
        Edit Button Enabled
        Delete Button Enabled
        Refresh Button Enabled

Shift Templates Buttons New Refresh are Enabled
        New Button Enabled
        Refresh Button Enabled

Shift Templates Buttons Duplicate Edit Delete Disabled
        Duplicate Button Disabled
        Edit Button Disabled
        Delete Button Disabled

Shift Templates Click on New
        click button  ${ST_PO_Btn_New}
New Page Display
         wait until element is visible  ${ST_PO_NewPage_Btn_Return}  timeout=5s
New Page Click Return
         click element  ${ST_PO_NewPage_Btn_Return}

Confirm Window Display
        wait until element is visible  ${ST_PO_ConfirmWindow}  timeout=5s
Confirm Window and Click YES
        click button  ${ST_PO_ConfirmWindow_Yes}

Shift Templates Click on Duplicate
        click button  ${ST_PO_Btn_Duplicate}
Duplicate Page Display
        wait until element is visible  ${ST_PO_DeplicatePage_ShiftName}  timeout=5s
        textfield should contain  ${ST_PO_DeplicatePage_ShiftName}  Copy of
Duplicate Page Button Save Enabled
        element should be enabled  ${ST_PO_DeplicatePage_Btn_Save}
Duplicate Page Click Return
        click button  ${ST_PO_DeplicatePage_Btn_Return}


Shift Templates Click on Edit
        click button  ${ST_PO_Btn_Edit}
Edit Page and Add
        input text  ${ST_PO_EditPage_ShiftNameDesc}  Testing
Edit Page Click Retun Enabled
        element should be enabled  ${ST_PO_EditPage_Btn_Return}
Edit Page Click Retun
         click button  ${ST_PO_EditPage_Btn_Return}


Shift Template Click on Refresh
        click button   ${ST_PO_Btn_Refresh}


Shift Templates Select Top Row and Delete Parmanently
        click element  ${ST_PO_TopRow}
        ${RowDataBeforeDel}=  get text  ${ST_PO_TopRow}
        click button  ${ST_PO_Btn_Delete}
        Confirm Delete Window
        Confirm Delete Window Click YES
        Sleep  2s
        element should not contain   ${ST_PO_TopRow}  ${RowDataBeforeDel}

Confirm Delete Window
        wait until element is visible  ${ST_PO_DeletePage_ConfirmWindow}  timeout=5s
        element should contain   ${ST_PO_DeletePage_ConfirmWindow_Messg}  Do you want to delete it now?
        element should be enabled  ${ST_PO_DeletePage_ConfirmWindow_No}
        element should be enabled  ${ST_PO_DeletePage_ConfirmWindow_Yes}
Confirm Delete Window Click YES
        click button   ${ST_PO_DeletePage_ConfirmWindow_Yes}


# FAP2
Shift Templates FAP2 Defualt Buttons Status
        Shift Templates FAP1 Defualt Buttons Status       #  FAP1 and FAP2 UserID gives the same default status
Shift Templates FAP2 Buttons Status After Top Row Selections
        New Button Enabled
        Refresh Button Enabled
        Edit Button Enabled
        Delete Button Disabled
        Refresh Button Enabled
Shift Template Select Top Row and Click on Disabled Delete
        Delete Button Disabled

# FAP3
Shift Templates FAP3 Defualt Buttons Status
         New Button Enabled
         Refresh Button Enabled
         Duplicate Button Disabled
         Edit Button Disabled
         Delete Button Disabled
Shift Templates FAP3 Buttons Status After Top Row Selections
        Shift Template All Button Enabled
Edit Enabled But Can Not Edit
        element should be disabled  ${ST_PO_EditPage_Btn_Save}
        element should be disabled  ${ST_PO_EditPage_Btn_SaveNew}

#FAP4
Shift Templates FAP4 Defualt Buttons Status
        New Button Enabled
        Refresh Button Enabled
        Duplicate Button Disabled
        Edit Button Disabled
        Delete Button Disabled
Shift Templates FAP4 Buttons Status After Top Row Selections
        New Button Enabled
        Duplicate Button Enabled
        Edit Button Enabled
        Delete Button Disabled
        Refresh Button Enabled
#FAP5
Shift Templates FAP5 Defualt Buttons Status
        New Button Disabled
        Duplicate Button Disabled
        Edit Button Disabled
        Delete Button Disabled
        Refresh Button Enabled
Shift Templates FAP5 Buttons Status After Top Row Selections
        New Button Disabled
        Duplicate Button Disabled
        Edit Button Enabled
        Delete Button Enabled
        Refresh Button Enabled
#FAP6
Shift Templates FAP6 Defualt Buttons Status
        New Button Disabled
        Duplicate Button Disabled
        Edit Button Disabled
        Delete Button Disabled
        Refresh Button Enabled
Shift Templates FAP6 Buttons Status After Top Row Selections
        New Button Disabled
        Duplicate Button Disabled
        Edit Button Enabled
        Delete Button Disabled
        Refresh Button Enabled
#FAP7
Shift Templates FAP7 Defualt Buttons Status
        New Button Disabled
        Duplicate Button Disabled
        Edit Button Disabled
        Delete Button Disabled
        Refresh Button Enabled
Shift Templates FAP7 Buttons Status After Top Row Selections
        New Button Disabled
        Duplicate Button Disabled
        Edit Button Enabled
        Delete Button Enabled
        Refresh Button Enabled