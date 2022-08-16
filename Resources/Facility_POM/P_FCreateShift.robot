*** Settings ***
Library     SeleniumLibrary
Resource      ../../Resources/Facility_POM/P_FCommon.robot
Resource    ../../Resources/Admin_POM/P_AdCommon.robot

*** Variables ***
### Create New Shift XPaths
### Choose a Shift Unit IMU , Radiology , ER , Pre-Op/PACU , Med/Surg
### ...                 OR , Assisted Living

${F_ShiftUnitVariable}      IMU

${F_ShiftUnitListChoice}    //li[.="${F_ShiftUnitVariable}"]
### Choose a Shift Type IMU [Tech , STNA] , Radiology [RN , Medical Assistant]
### ...
${F_ShiftTypeVariable}      Tech

${F_ShiftTypeListChoice}    //li[@data-value="${F_ShiftTypeVariable}"]
### Choose Qualifications   COVID Vaccine , MTF , LVN
### ...
${F_Qualification1Variable}      COVID Vaccine

${F_QualificationListChoice}    //li[@data-value="${F_Qualification1Variable}"]

${F_COVIDUnitChoice}        //li[@data-value="COVID Unit"]    #### >>> Should be with Variables COVID Unit or Non COVID Unit

${F_ShiftUnit_Create}       //span[.="Shift unit"]//parent::label//following-sibling::div//div//div[@role="button"]
${F_ShiftType_Create}       //span[.="Shift type"]//parent::label//following-sibling::div//div//div[@role="button"]
${F_COVIDUnit_Create}       //span[.="Unit Classification"]//parent::label//following-sibling::div//div//div[@role="button"]
${F_StartTime_Create}       //label[.="Start time"]//following-sibling::div//input[@type="datetime-local"]
${F_EndTime_Create}     //label[.="End time"]//following-sibling::div//input[@type="datetime-local"]
${F_Description_Create}     //textarea[@id="description"]
${F_RequiredQualif_Create}      //label[@for="qualifications"]//following-sibling::div//div//div[@role="button"]
${PostShift_Create}     //button[@aria-label="Post shift"]

### Cancel Shift XPaths
${F_AddFilter}      //button[@aria-label="Add filter"]
${F_StatusAddFilter}        //li[@data-key="status"]
${F_StatusList_AddFilter}       //span[.="Status"]//parent::label//following-sibling::div//div//div[@role="button"]
${F_StatusOpenFilter}       //li[@data-value="opened"]
${F_StatusConfirmedFilter}       //li[@data-value="confirmed"]
${F_StatusPendingClockFilter}       //li[@data-value="pending clock"]
${F_StatusCancelledFilter}       //li[@data-value="cancelled"]
${F_CancelShift}       //span[.="Cancel shift"]//parent::button

#### Clone Already existing Shift
${F_TargetedShiftToClone}       //p[.="02 August 2022"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="IMU / STNA"]//parent::div//parent::div[@role="button"]
${F_CloneShift}     //a[@aria-label="Clone"]

### Edit Button in Shift Page
${F_EditShift}      //span[.="Edit"]//parent::a

*** Keywords ***
Create New Shift
    [Arguments]     ${F_ShiftDescription_CreateShift}  ${StartShift_Date}  ${F_ShiftUnitVariable}
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
    input text      ${F_Description_Create}    ${F_ShiftDescription_CreateShift}
#    click element       ${F_RequiredQualif_Create}
#    wait until page contains element        ${F_QualificationListChoice}
#    click element       ${F_QualificationListChoice}
#    ${IsElementVisible}=  Run Keyword And Return Status    click element       ${PostShift_Create}
#    Run Keyword If    "${IsElementVisible}" == "False"  click element       ${PostShift_Create}
    click element       ${PostShift_Create}

Cancel Shift
    [Arguments]     ${F_TargetedShift}
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
    [Arguments]     ${F_TargetedShiftToClone}
    Click on SideBar Icons      ${ShiftOverView_FSideBar}
    wait until page contains element        //p[.="02 August 2022"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="IMU / STNA"]//parent::div//parent::div[@role="button"]
    click element       //p[.="02 August 2022"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="IMU / STNA"]//parent::div//parent::div[@role="button"]
    wait until page contains element     ${F_CloneShift}
    click element       ${F_CloneShift}
    wait until page contains element        ${PostShift_Create}
    click element       ${PostShift_Create}

Edit in a specific Shift
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





