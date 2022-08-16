*** Settings ***
Library     SeleniumLibrary
Resource      ../../Resources/Facility_POM/P_FCommon.robot
Resource    ../../Resources/Admin_POM/P_AdCommon.robot

*** Variables ***
### Review Shifts
${ReviewButton_Shift}       //span[.="Review Shift"]//parent::button
${F_OverAll5Starts_Review}     //div[.="Overall Rating"]//following-sibling::div//div//following-sibling::div//following-sibling::div//following-sibling::div//following-sibling::div
${F_CustomerSer5Starts_Review}      //div[.="Customer Service"]//following-sibling::div//div//following-sibling::div//following-sibling::div//following-sibling::div//following-sibling::div
${F_ClinicalSkills5Starts_Review}      //div[.="Clinician Skills"]//following-sibling::div//div//following-sibling::div//following-sibling::div//following-sibling::div//following-sibling::div
${F_Confirm_Review}     //button[@type="submit"]

*** Keywords ***
Review Completed Shift KW
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







