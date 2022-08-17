*** Settings ***
Resource      ../../Resources/Facility_POM/P_FPastShifts.robot

Test Setup      P_FCommon.StartTest       ${F_UserNameVariable}     ${F_PasswordVariable}
Test Teardown       close browser

*** Variables ***
${F_UserNameVariable}      SamehSTF01
${F_PasswordVariable}      Sameh1234

${F_ShiftDateToReview}      22 July 2022
${F_ShiftOrderToReview}     1

*** Test Cases ***
Review Completed Shift TC
        Review Completed Shift KW      ${ShiftToReview}     ${F_ShiftOrderToReview}








