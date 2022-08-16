*** Settings ***
Resource      ../Resources/Facility_POM/P_FMessage.robot

Test Setup      P_FCommon.StartTest       ${F_UserNameVariable}     ${F_PasswordVariable}
Test Teardown       close browser

*** Variables ***
${F_UserNameVariable}      Sameh TA01
${F_PasswordVariable}      Sameh1234
${NurseNameToMessgae}       Sameh El Nabawy

*** Test Cases ***
Send Message to Nurse TC
        Send Message to Nurse KW        ${MessageToBeSent}
