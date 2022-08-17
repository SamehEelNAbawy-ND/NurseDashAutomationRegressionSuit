*** Settings ***
Resource      ../../Resources/Facility_POM/P_FSettings.robot

Test Setup      P_FCommon.StartTest     ${F_UserNameVariable}     ${F_PasswordVariable}
Test Teardown       close browser

*** Variables ***
${F_UserNameVariable}      Sameh TA01
${F_PasswordVariable}      Sameh1234
${F_PDFFilePath}    /Resources/AdminTestData/OrintationFacility.pdf
${F_UserNameVariable}  Sameh
${F_UserEmailVariable}      sameh@nursedash.com
${F_UserRoleVar}        Facility User

*** Test Cases ***
Enter Settings Section TC
    Enter Settings Section KW      ${F_PDFFilePath}  ${F_UserNameVariable}  ${F_UserEmailVariable}  ${F_UserRoleVar}

