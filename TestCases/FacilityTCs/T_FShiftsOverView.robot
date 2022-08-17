*** Settings ***
Resource    ../../Resources/Facility_POM/P_FCommon.robot
Resource    ../../Resources/Admin_POM/P_AdCommon.robot
Resource    ../../Resources/Facility_POM/P_FShiftOverView.robot

Test Setup      P_FCommon.StartTest     ${F_UserNameVariable}     ${F_PasswordVariable}
Test Teardown       close browser

*** Variables ***
### Log In Credintials
${F_UserNameVariable}      Sameh TA01
${F_PasswordVariable}      Sameh1234

${F_ShiftDateToClone}      17 August 2022
${F_ShiftDateToCancel}      17 August 2022
${F_ShiftDateToEdit}      17 August 2022
${F_ShiftOrderToClone}     1  ## This Variable to Sepecify shift orde in list
${F_ShiftOrderToEdit}       1
${F_ShiftOrderToCancel}     1

#### Data of Shift for Edit
${StartShift_Date}      08-17-2022
${EndShift_Date}        08-17-2022
${AM}       1
${PM}       2      ## 2 >> PM , 1 >> AM
${StartShift_Time}      0850${PM}
${EndShift_Time}        0855${PM}

*** Test Cases ***
Cancel Shift TC
    Cancel Shift KW     ${F_ShiftDateToCancel}       ${F_ShiftOrderToCancel}

Clone Existing Shift TC
    Clone Existing Shift KW     ${F_ShiftDateToClone}       ${F_ShiftOrderToClone}

Edit in a specific Shift TC
    Edit in a specific Shift KW     ${F_ShiftDateToEdit}      ${F_ShiftOrderToEdit}