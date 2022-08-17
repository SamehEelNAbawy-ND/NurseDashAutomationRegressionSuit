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

*** Keywords ***
Create New Shift KW
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





