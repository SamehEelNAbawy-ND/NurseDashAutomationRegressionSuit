*** Settings ***
Library    SeleniumLibrary

*** Variables ***

#Pop Up Display for all Facilities Generally
${COVIDVerificationTitle_PopUP}     //div//h2[.="COVID Free Verification"]
${F_StagingLink}        https://facility-staging.nursedash.com

# Side Bar ICON Buttons
${SideBar_Facility}     //button[@aria-label="Open drawer"]
${Calendar_FSideBar}        //div//a[@href="#/Calendar"]
${ShiftOverView_FSideBar}       //a[@href="#/OverviewShift"]
${PastShifts_FSideBar}      //a//div[.=" Past Shifts"]//parent::a
${Applicants_FSideBar}      //div[.=" Applicants"]//parent::a
${CreateShift_FSideBar}     //main//a[@href="#/OverviewShift/create"]
${Messages_FSideBar}        //div[.=" Messages"]//parent::a
${Settings_FSideBar}        //div[.=" Settings"]//parent::a
${ContactUs_FSideBar}       //a[@href="#/../"]
${LogOut_FSideBar}      //li[.="Logout"]

${F_UserName_LogIn}       //div//input[@id="username"]
${F_Password_LogIn}       //div//input[@id="password"]
${F_Submit_LogIn}     //div//button[@type="submit"]

##${COVIDFreeVerification_Main}

${SideBar_Main}    //div//button[@aria-label="Open drawer"]

#COVID Free Verification Variables
${COVIDOption}      Yes          #### This Could be Yes , Update COVID Status , Later
${COVIDFreeVerificationPopUp}       //div//h2[.="COVID Free Verification"]
${COVIDFreeVerificationPopUp_Options}       //span[.="${COVIDOption}"]//parent::button

*** Keywords ***
LogIn Facility Portal
    [Arguments]     ${F_UserNameVariable}       ${F_PasswordVariable}
    wait until keyword succeeds    1000s    1s    input text    ${F_UserName_LogIn}     ${F_UserNameVariable}
    input password    ${F_Password_LogIn}    ${F_PasswordVariable}
    click element    ${F_Submit_LogIn}

LogOut From Facility Portal
    Sleep       2s
    wait until page contains element        ${LogOut_FSideBar}
    click element       ${LogOut_FSideBar}
    wait until page contains element        ${F_UserName_LogIn}

StartTest
    [Arguments]     ${F_UserNameVariable}     ${F_PasswordVariable}
    open browser    https://facility-staging.nursedash.com      chrome
    maximize browser window
    LogIn Facility Portal       ${F_UserNameVariable}     ${F_PasswordVariable}

Start Browser
    open browser    https://facility-staging.nursedash.com      chrome
    maximize browser window

COVID Free Verification KW
    [Arguments]     ${COVIDOption}
    wait until page contains element        ${COVIDFreeVerificationPopUp}
    click element       ${COVIDFreeVerificationPopUp_Options}
    sleep  1s
