*** Settings ***
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
${TargetedShift}        //div//div//div//ul//li//div//div//p[.="1:00pm - 8:00pm"]//parent::div//parent::div//parent::div[@role="button"]
${F_ShiftDescription_CreateShift}       This shift for test posting form Facility portal
### Create New Shift XPaths
### Choose a Shift Unit IMU , Radiology , ER , Pre-Op/PACU , Med/Surg
### ...                 OR , Assisted Living
${F_ShiftUnitVariable}      IMU
${F_ShiftUnitListChoice}    //li[.="${F_ShiftUnitVariable}"]
${F_ShiftDate}      02 August 2022
${F_TargetedShift}      //p[.="${F_ShiftDate}"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="IMU / STNA"]//parent::div//parent::div[@role="button"]


*** Test Cases ***
Create New Shift
    ###Create New Shift Keyword
    Click on SideBar Icons      ${CreateShift_FSideBar}
    sleep       1s
    wait until page contains element        ${F_ShiftUnit_Create}
    click element      ${F_ShiftUnit_Create}
    wait until page contains element        ${F_ShiftUnitListChoice}
    click element       ${F_ShiftUnitListChoice}
    wait until page contains element        ${F_ShiftType_Create}
    click element      ${F_ShiftType_Create}
    wait until page contains element        ${F_ShiftTypeListChoice}
    click element       ${F_ShiftTypeListChoice}
    click element       ${F_COVIDUnit_Create}
    wait until page contains element       ${F_COVIDUnitChoice}
    click element       ${F_COVIDUnitChoice}
    click element       ${F_StartTime_Create}
    input text    ${F_StartTime_Create}    ${StartShift_Date}
    press keys    None  TAB
    press keys    None  ${StartShift_Time}
    input text    ${F_EndTime_Create}    ${EndShift_Date}
    press keys    None  TAB
    press keys    None  ${EndShift_Time}
    click element       ${F_Description_Create}
    input text      ${F_Description_Create}     This shift for test posting form Facility portal
#    click element       ${F_RequiredQualif_Create}
#    wait until page contains element        ${F_QualificationListChoice}
#    click element       ${F_QualificationListChoice}
#    ${IsElementVisible}=  Run Keyword And Return Status    click element       ${PostShift_Create}
#    Run Keyword If    "${IsElementVisible}" == "False"  click element       ${PostShift_Create}
    click element       ${PostShift_Create}

Cancel Shift
    ###Cancel Shift Keyword
    Click on SideBar Icons      ${ShiftOverView_FSideBar}
    #sleep   1
    wait until page contains element        ${F_AddFilter}
    click button        ${F_AddFilter}
    wait until page contains element        ${F_StatusAddFilter}
    click element       ${F_StatusAddFilter}
    wait until page contains element        ${F_StatusList_AddFilter}
    click element       ${F_StatusList_AddFilter}
    wait until page contains element        ${F_StatusOpenFilter}
    click element       ${F_StatusOpenFilter}
    wait until page contains element        //p[.="02 August 2022"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="IMU / STNA"]//parent::div//parent::div[@role="button"]
    click element       //p[.="02 August 2022"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="IMU / STNA"]//parent::div//parent::div[@role="button"]
    wait until page contains element        ${F_CancelShift}
    click element       ${F_CancelShift}
    wait until page contains element        //div//h2[.="Cancel shift"]
    click element       //span[.="confirm"]//parent::button
    wait until keyword succeeds    100s    1s       wait until page contains element        //span[.="cancelled"]//parent::button

Clone Existing Shift
    ###Clone Already Existing Shift Keyword
    Click on SideBar Icons      ${ShiftOverView_FSideBar}
    wait until page contains element        //p[.="02 August 2022"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="IMU / STNA"]//parent::div//parent::div[@role="button"]
    click element       //p[.="02 August 2022"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="IMU / STNA"]//parent::div//parent::div[@role="button"]
    wait until page contains element     ${F_CloneShift}
    click element       ${F_CloneShift}
    wait until page contains element        ${PostShift_Create}
    click element       ${PostShift_Create}

Edit in a specific Shift
    ###Edit in a specific Shift Keyword
    Click on SideBar Icons       ${ShiftOverView_FSideBar}
    wait until page contains element       ${TargetedShift}
    click element       ${TargetedShift}
    wait until page contains element          ${F_EditShift}
    click element       ${F_EditShift}
    wait until page contains element        ${F_StartTime_Create}
    press keys    None  TAB
    press keys    None  ${StartShift_Time}
    input text    ${F_EndTime_Create}    ${EndShift_Date}
    press keys    None  TAB
    press keys    None  ${EndShift_Time}
    click element       //span[.="Save shift"]//parent::button
    wait until page contains element        ${F_EditShift}
    sleep       2s





