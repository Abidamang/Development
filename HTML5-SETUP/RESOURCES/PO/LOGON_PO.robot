*** Settings ***
Library  Selenium2Library


*** Variables ***
${START_URL}
${LOGIN_ID}
${LOGIN_PSSWD}

${LOGON_PO_UserNameField}      id=username
${LOGON_PO_UserPassField}      id=passInput
${LOGON_PO_SubmitButton}       id=loginSubmit

*** Keywords ***
Load
    GO TO  ${START_URL}

Verify Page
    page should contain  User Name

Logon ID and Password
    input text  ${LOGON_PO_UserNameField}     ${LOGIN_ID}
    input text  ${LOGON_PO_UserPassField}     ${LOGIN_PSSWD}
    click button  ${LOGON_PO_SubmitButton}
    Sleep  20s
