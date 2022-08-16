*** Settings ***
Resource    ../../Resources/Facility_POM/P_FContactUs.robot

Test Setup      P_FCommon.StartTest     ${F_UserNameVariable}     ${F_PasswordVariable}
Test Teardown       close browser

*** Variables ***
${F_UserNameVariable}      Sameh TA01
${F_PasswordVariable}      Sameh1234

${F_Name_ContactUsVar}      Sameh Nabawy
${F_ShiftPostInfo_ContactUsVar}     Test Automation
${F_Phone_ContactUsVar}     8322349910

*** Test Cases ***
Start Contact Us Session TC
    Start Contact Us Session KW     ${F_Name_ContactUsVar}      ${F_ShiftPostInfo_ContactUsVar}     ${F_Phone_ContactUsVar}
