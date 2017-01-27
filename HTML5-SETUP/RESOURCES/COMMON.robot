*** Settings ***
Library  Selenium2Library
#Resource  ../TESTS/ST_FAP1.robot

*** Variables ***

@{START_URL} =  http://dal-product-ora/wfc/logon  http://dal-product-mss/wfc/logon
${BROWSER} =  chrome
${UserID}   id=username
${PsswdID}  id=passInput
${Submit}   id=loginSubmit

# Intialize Varaible
@{Users}
${PassW}

*** Keywords ***

Begin Test
    Open Browser  about:blank  ${BROWSER}
    Load
Load
    GO TO  ${START_URL[0]}
    maximize browser window
    set selenium speed  300ms
    set browser implicit wait  20s

Login ST_FAP User Credentials
    input text  ${UserID}   ${Users}
    input text  ${PsswdID}  ${PassW}
    click button  ${Submit}

End Test
    close all browsers


