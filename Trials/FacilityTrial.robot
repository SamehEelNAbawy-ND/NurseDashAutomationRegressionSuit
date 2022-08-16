*** Settings ***
Resource    ../Resources/Facility_POM/P_FCommon.robot

Test Teardown       close browser
*** Variables ***
${F_UserNameVariable}      SamehSTF04
${F_PasswordVariable}      Sameh1234
${F_InvalidUserNameVariable}        SSSS
${F_InvalidPasswordVariable}        125478SS

*** Test Cases ***
Log In Facility Portals With Valid Credintials
  LogIn Facility Portal   ${F_UserNameVariable}  ${F_PasswordVariable}

Log In Facility Portals With Invalid UserName
        LogIn Facility Portal   ${F_UserNameVariable}  ${F_PasswordVariable}

Log In Facility Portals With Invalid UserName
        LogIn Facility Portal   ${F_UserNameVariable}  ${F_PasswordVariable}

Log Out Facility Portal
        LogIn Facility Portal   ${F_UserNameVariable}  ${F_PasswordVariable}
        LogOut From Facility Portal


