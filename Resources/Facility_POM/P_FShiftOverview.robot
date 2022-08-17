*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/Admin_POM/P_AdCommon.robot
Resource      ../../Resources/Facility_POM/P_FCommon.robot
Resource      ../../Resources/Facility_POM/P_FCreateShift.robot

*** Variables ***
### Targeted Shifts Xpaths
${F_TargetedShiftToClone}       (//p[.="${F_ShiftDateToClone}"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="ER / LPN"]//parent::div//parent::div[@role="button"])[${F_ShiftOrder}]
${F_TargetedShiftToEdit}       (//p[.="${F_ShiftDateEditToEdit}"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="ER / LPN"]//parent::div//parent::div[@role="button"])[${F_ShiftOrder}]
${F_TargetedShiftToCancel}       (//p[.="${F_ShiftDateToCancel}"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="ER / LPN"]//parent::div//parent::div[@role="button"])[${F_ShiftOrder}]

### Cancel Shift XPaths
${F_AddFilter}      //button[@aria-label="Add filter"]
${F_StatusAddFilter}        //li[@data-key="status"]
${F_StatusList_AddFilter}       //span[.="Status"]//parent::label//following-sibling::div//div//div[@role="button"]
${F_StatusOpenFilter}       //li[@data-value="opened"]
${F_StatusConfirmedFilter}       //li[@data-value="confirmed"]
${F_StatusPendingClockFilter}       //li[@data-value="pending clock"]
${F_StatusCancelledFilter}       //li[@data-value="cancelled"]
${F_CancelShift}       //span[.="Cancel shift"]//parent::button
${F_StatusPendingReviewFilter}       //li[@data-value="pending review"]

#### Clone Already existing Shift
${F_CloneShift}     //a[@aria-label="Clone"]

### Edit Button in Shift Page
${F_EditShift}      //span[.="Edit"]//parent::a

*** Keywords ***

Cancel Shift KW
    [Arguments]     ${F_ShiftDateToCancel}      ${F_ShiftOrder}
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
    sleep  2s
    wait until page contains element       (//p[.="${F_ShiftDateToCancel}"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="ER / LPN"]//parent::div//parent::div[@role="button"])[${F_ShiftOrder}]
    click element       (//p[.="${F_ShiftDateToCancel}"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="ER / LPN"]//parent::div//parent::div[@role="button"])[${F_ShiftOrder}]
    wait until page contains element        ${F_CancelShift}
    click element       ${F_CancelShift}
    wait until page contains element        //div//h2[.="Cancel shift"]
    click element       //span[.="confirm"]//parent::button
    wait until keyword succeeds    100s    1s       wait until page contains element        //span[.="cancelled"]//parent::button
    sleep   3s

Clone Existing Shift KW
    [Arguments]     ${F_ShiftDateToClone}      ${F_ShiftOrder}
    Click on SideBar Icons      ${ShiftOverView_FSideBar}
    wait until page contains element        ${F_AddFilter}
    click button        ${F_AddFilter}
    wait until page contains element        ${F_StatusAddFilter}
    click element       ${F_StatusAddFilter}
    wait until page contains element        ${F_StatusList_AddFilter}
    click element       ${F_StatusList_AddFilter}
    wait until page contains element        ${F_StatusOpenFilter}
    click element       ${F_StatusOpenFilter}
    sleep  2s
    wait until page contains element       (//p[.="${F_ShiftDateToClone}"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="ER / LPN"]//parent::div//parent::div[@role="button"])[${F_ShiftOrder}]
    click element       (//p[.="${F_ShiftDateToClone}"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="ER / LPN"]//parent::div//parent::div[@role="button"])[${F_ShiftOrder}]
    wait until page contains element     ${F_CloneShift}
    click element       ${F_CloneShift}
    wait until page contains element        ${PostShift_Create}
    click element       ${PostShift_Create}
    sleep       3s

Edit in a specific Shift KW
    [Arguments]     ${F_ShiftDateToEdit}      ${F_ShiftOrder}
    Click on SideBar Icons       ${ShiftOverView_FSideBar}
    wait until page contains element        ${F_AddFilter}
    click button        ${F_AddFilter}
    wait until page contains element        ${F_StatusAddFilter}
    click element       ${F_StatusAddFilter}
    wait until page contains element        ${F_StatusList_AddFilter}
    click element       ${F_StatusList_AddFilter}
    wait until page contains element        ${F_StatusOpenFilter}
    click element       ${F_StatusOpenFilter}
    sleep  2s
    wait until page contains element       (//p[.="${F_ShiftDateToEdit}"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="ER / LPN"]//parent::div//parent::div[@role="button"])[${F_ShiftOrder}]
    click element       (//p[.="${F_ShiftDateToEdit}"]//parent::div//parent::div//following-sibling::div//div//div//div//ul//li//div//div//h3[.="ER / LPN"]//parent::div//parent::div[@role="button"])[${F_ShiftOrder}]
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

