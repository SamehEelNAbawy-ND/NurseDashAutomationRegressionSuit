*** Settings ***
Resource      ../../Resources/Facility_POM/P_FPastShifts.robot

Test Setup      P_FCommon.StartTest       ${F_UserNameVariable}     ${F_PasswordVariable}
Test Teardown       close browser

*** Variables ***
${F_UserNameVariable}      Sameh TA01
${F_PasswordVariable}      Sameh1234

${ShiftToReview}        //p[.="15 August 2022"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="IMU / STNA"]//following-sibling::p[.="8:50pm - 8:55pm"]//parent::div//parent::div[@role="button"]
### Review Shifts
${ReviewButton_Shift}       //span[.="Review Shift"]//parent::button
${F_OverAll5Starts_Review}     //div[.="Overall Rating"]//following-sibling::div//div//following-sibling::div//following-sibling::div//following-sibling::div//following-sibling::div
${F_CustomerSer5Starts_Review}      //div[.="Customer Service"]//following-sibling::div//div//following-sibling::div//following-sibling::div//following-sibling::div//following-sibling::div
${F_ClinicalSkills5Starts_Review}      //div[.="Clinician Skills"]//following-sibling::div//div//following-sibling::div//following-sibling::div//following-sibling::div//following-sibling::div
${F_Confirm_Review}     //button[@type="submit"]

*** Test Cases ***
Review Completed Shift
    LogIn Facility Portal    ${F_UserNameVariable}     ${F_PasswordVariable}
    ###Review already existing Shift Keyword
    Click on SideBar Icons      ${PastShifts_FSideBar}
    #sleep   1
    wait until page contains element        ${ShiftToReview}
    click element       ${ShiftToReview}
    wait until page contains element        ${ReviewButton_Shift}
    click element       ${ReviewButton_Shift}
    wait until page contains element        ${F_OverAll5Starts_Review}
    click element       ${F_OverAll5Starts_Review}
    wait until page contains element        ${F_CustomerSer5Starts_Review}
    click element       ${F_CustomerSer5Starts_Review}
    wait until page contains element        ${F_ClinicalSkills5Starts_Review}
    click element       ${F_ClinicalSkills5Starts_Review}
    click element       ${F_Confirm_Review}







