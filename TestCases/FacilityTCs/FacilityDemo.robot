*** Settings ***
Resource        ../../Resources/Facility_POM/P_FCommon.robot
Resource        ../../Resources/Facility_POM/P_FContactUs.robot
Resource        ../../Resources/Facility_POM/P_FCreateShifts.robot
Resource        ../../Resources/Facility_POM/P_FLogIn.robot
Resource        ../../Resources/Facility_POM/P_FMessages.robot
Resource        ../../Resources/Facility_POM/P_FPastShifts.robot
Resource        ../../Resources/Facility_POM/P_FSettings.robot
Resource        ../../Resources/Facility_POM/P_FShiftOverview.robot

Test Setup      P_FCommon.Start Browser
Test Teardown       close browser

*** Variable ***
### Contact Us Variables
${F_UserNameVariable}      Sameh TA01
${F_PasswordVariable}      Sameh1234

${F_Name_ContactUsVar}      Sameh Nabawy
${F_ShiftPostInfo_ContactUsVar}     Test Automation
${F_Phone_ContactUsVar}     8322349910

### Send Message Variables
${NurseNameToMessgae}       Sameh El Nabawy

*** Test Cases ***
### Log In Test Cases
Log In Facility Portals With Valid Credintials
  LogIn Facility Portal   ${F_UserNameVariable}  ${F_PasswordVariable}

Log In Facility Portals With Invalid UserName
        LogIn Facility Portal   ${F_UserNameVariable}  ${F_PasswordVariable}

Log In Facility Portals With Invalid UserName
        LogIn Facility Portal   ${F_UserNameVariable}  ${F_PasswordVariable}

Log Out Facility Portal
        LogIn Facility Portal   ${F_UserNameVariable}  ${F_PasswordVariable}
        LogOut From Facility Portal

### Contatc Us Test Case
Start Contact Us Session TC
        LogIn Facility Portal   ${F_UserNameVariable}  ${F_PasswordVariable}
        Start Contact Us Session KW     ${F_Name_ContactUsVar}      ${F_ShiftPostInfo_ContactUsVar}     ${F_Phone_ContactUsVar}

### Send Message Test Case
Send Message to Nurse TC
         LogIn Facility Portal   ${F_UserNameVariable}  ${F_PasswordVariable}
         Send Message to Nurse KW        ${MessageToBeSent}