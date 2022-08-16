*** Settings ***
Library     SeleniumLibrary
Resource      ../../Resources/Facility_POM/P_FCommon.robot
Resource    ../../Resources/Admin_POM/P_AdCommon.robot

*** Variables ***
${F_UserNameVariable}      Sameh TA01
${F_PasswordVariable}      Sameh1234

${F_Start_ContactUs}        //button[@data-qa="start-button"]
${F_Name_ContactUs}     //input[@autocomplete="name"]
${F_PreviousButton_ContactUs}       //button[@data-tracking="footer_arrow_down"]
${F_NextButton_ContactUs}       //button[@data-tracking="footer_arrow_down"]
${F_HowtoHelp_ContactUs}     //div[.="I need help with shifts"]//parent::div[@data-qa="choice"]
${F_WouldLiketoHelp_ContactUs}      //div[.="I need help posting shifts"]//parent::div[@data-qa="choice"]
${F_InputUrRequest_ContactUs}       //div[.="Input via the form"]//parent::div[@data-qa="choice"]
${F_ShiftPostInfo_ContactUs}      //textarea[@placeholder="Type your answer here..."]
${F_AuthorizedByF_ContactUs}        //div[.="Yes"]//parent::div[@data-selectable="true"]
${F_ContactF_ContactUs}     //div[.="Call"]//parent::div[@data-selectable="true"]
${F_Phone_ContactUs}        //input[@aria-label="Phone number input"]
${F_Submit_ContactUs}       //span[.="Submit"]//parent::button
${F_GoToPortal_ContactUs}       //button[@data-qa="thank-you-button"]

*** Keywords ***
Start Contact Us Session KW
    [Arguments]     ${F_Name_ContactUsVar}      ${F_ShiftPostInfo_ContactUsVar}     ${F_Phone_ContactUsVar}
    Click on SideBar Icons      ${ContactUs_FSideBar}
    wait until page contains element        ${F_Start_ContactUs}
    click element       ${F_Start_ContactUs}
    sleep       3s
    wait until page contains element        ${F_Name_ContactUs}
    wait until keyword succeeds  100s  1s   click element       ${F_Name_ContactUs}
    input text      ${F_Name_ContactUs}     ${F_Name_ContactUsVar}
    click element       ${F_NextButton_ContactUs}
    wait until page contains element        ${F_HowtoHelp_ContactUs}
    wait until keyword succeeds  100s  1s       click element      ${F_HowtoHelp_ContactUs}
    wait until page contains element        ${F_WouldLiketoHelp_ContactUs}
    wait until keyword succeeds  100s  1s       click element       ${F_WouldLiketoHelp_ContactUs}
    wait until page contains element        ${F_InputUrRequest_ContactUs}
    wait until keyword succeeds  100s  1s       click element       ${F_InputUrRequest_ContactUs}
    wait until keyword succeeds  100s  1s       wait until page contains element        ${F_ShiftPostInfo_ContactUs}
    wait until keyword succeeds  100s  1s       input text      ${F_ShiftPostInfo_ContactUs}        ${F_ShiftPostInfo_ContactUsVar}
    click element       ${F_NextButton_ContactUs}
    wait until keyword succeeds  100s  1s       wait until page contains element        ${F_AuthorizedByF_ContactUs}
    wait until keyword succeeds  100s  1s       click element       ${F_AuthorizedByF_ContactUs}
    wait until keyword succeeds  100s  1s       wait until page contains element        ${F_ContactF_ContactUs}
    wait until keyword succeeds  100s  1s       click element       ${F_ContactF_ContactUs}
    wait until keyword succeeds  100s  1s       wait until page contains element        ${F_Phone_ContactUs}
    wait until keyword succeeds  100s  1s       input text      ${F_Phone_ContactUs}        ${F_Phone_ContactUsVar}
    click element       ${F_Submit_ContactUs}
    wait until keyword succeeds  100s  1s       wait until page contains element        ${F_GoToPortal_ContactUs}
    wait until keyword succeeds  100s  1s       click element       ${F_GoToPortal_ContactUs}


