*** Settings ***
Resource    ../../Resources/Facility_POM/P_FCommon.robot
Resource    ../../Resources/Admin_POM/P_AdCommon.robot
Resource    ../../Resources/Facility_POM/P_FCreateShift.robot

Test Setup      P_FCommon.StartTest     ${F_UserNameVariable}     ${F_PasswordVariable}
Test Teardown       close browser

*** Variables ***
${F_UserNameVariable}      Sameh TA01
${F_PasswordVariable}      Sameh1234

${StartShift_Date}      08-17-2022
${EndShift_Date}        08-17-2022
${AM}       1
${PM}       2      ## 2 >> PM , 1 >> AM
${StartShift_Time}      0850${PM}
${EndShift_Time}        0855${PM}

${F_ShiftDescription_CreateShift}       This shift for test posting form Facility portal
### Create New Shift XPaths
### Choose a Shift Unit IMU , Radiology , ER , Pre-Op/PACU , Med/Surg
### ...                 OR , Assisted Living
${F_ShiftUnitVariable}      IMU
${F_ShiftUnitListChoice}    //li[.="${F_ShiftUnitVariable}"]



*** Test Cases ***
Create New Shift TC
    Create New Shift KW     ${F_ShiftDescription_CreateShift}  ${StartShift_Date}  ${F_ShiftUnitVariable}








