*** Settings ***
Resource    ../../Resources/Facility_POM/P_FCommon.robot

Test Setup      P_FCommon.Start Browser
Test Teardown       close browser
*** Variables ***
${F_UserNameVariable}      Sameh TA01
${F_PasswordVariable}      Sameh1234
${F_InvalidUserNameVariable}        SSSS
${F_InvalidPasswordVariable}        125478SS

#COVID Free Verification Variables
${COVIDOption}      Yes          #### This Could be Yes , Update COVID Status , Later

*** Test Cases ***
#COVID Free Verification TC
#    LogIn Facility Portal   ${F_UserNameVariable}  ${F_PasswordVariable}
#    COVID Free Verification KW      ${COVIDOption}
#    LogOut From Facility Portal
#    LogIn Facility Portal   ${F_UserNameVariable}  ${F_PasswordVariable}
#    page should not contain element     ${COVIDFreeVerificationPopUp}
#
Log In Facility Portals With Valid Credintials
  LogIn Facility Portal   ${F_UserNameVariable}  ${F_PasswordVariable}

Log In Facility Portals With Invalid UserName
        LogIn Facility Portal   ${F_UserNameVariable}  ${F_PasswordVariable}

Log In Facility Portals With Invalid UserName
        LogIn Facility Portal   ${F_UserNameVariable}  ${F_PasswordVariable}

Log Out Facility Portal
        LogIn Facility Portal   ${F_UserNameVariable}  ${F_PasswordVariable}
        LogOut From Facility Portal

