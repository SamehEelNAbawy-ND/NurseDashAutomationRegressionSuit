*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Admin_POM/P_AdCommon.robot
Resource      ../Resources/Facility_POM/P_FCommon.robot

*** Variables ***
${RunTime}      002
${MessageToBeSent}      Automation Test ${RunTime}
${F_ApplicantMessage}        //span[.="${NurseNameToMessgae}"]//parent::div
${F_MessageInputField}      //input[@placeholder="Type message here"]
${F_SendMessage}        //input[@placeholder="Type message here"]//following-sibling::button

*** Keywords ***
Send Message to Nurse KW
    [Arguments]     ${MessageToBeSent}
    Click on SideBar Icons      ${Messages_FSideBar}
    wait until page contains element         ${F_ApplicantMessage}
    click element       ${F_ApplicantMessage}
    wait until page contains element        ${F_MessageInputField}
    input text      ${F_MessageInputField}      ${MessageToBeSent}
    click element       ${F_SendMessage}
    wait until keyword succeeds    10s    1s    wait until page contains element        //div[.="${MessageToBeSent}"]
