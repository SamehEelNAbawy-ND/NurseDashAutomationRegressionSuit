*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Admin_POM/P_AdCommon.robot
Resource      ../../Resources/Facility_POM/P_FCommon.robot
Resource      ../../Resources/Facility_POM/P_FShiftOverView.robot

*** Variables ***
### Review Shifts
${ReviewButton_Shift}       //span[.="Review Shift"]//parent::button
${F_OverAll5Starts_Review}     //div[.="Overall Rating"]//following-sibling::div//div//following-sibling::div//following-sibling::div//following-sibling::div//following-sibling::div
${F_CustomerSer5Starts_Review}      //div[.="Customer Service"]//following-sibling::div//div//following-sibling::div//following-sibling::div//following-sibling::div//following-sibling::div
${F_ClinicalSkills5Starts_Review}      //div[.="Clinician Skills"]//following-sibling::div//div//following-sibling::div//following-sibling::div//following-sibling::div//following-sibling::div
${F_Confirm_Review}     //button[@type="submit"]
${ShiftToReview}        (//p[.="${F_ShiftDateToReview}"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="Hospice / STNA"]//following-sibling::p[.="12:30pm - 3:30pm"]//parent::div//parent::div[@role="button"])[${F_ShiftOrderToReview}]

*** Keywords ***
Review Completed Shift KW
    [Arguments]     ${F_ShiftDateToReview}      ${F_ShiftOrderToReview}
    ###Review already existing Shift Keyword
    Click on SideBar Icons      ${PastShifts_FSideBar}
    #sleep   1
    #### Filter
    wait until page contains element        ${F_AddFilter}
    click button        ${F_AddFilter}
    wait until page contains element        ${F_StatusAddFilter}
    click element       ${F_StatusAddFilter}
    wait until page contains element        ${F_StatusList_AddFilter}
    click element       ${F_StatusList_AddFilter}
    wait until page contains element        ${F_StatusPendingReviewFilter}
    click element       ${F_StatusPendingReviewFilter}
    sleep  2s
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
    #click element       ${F_Confirm_Review}







