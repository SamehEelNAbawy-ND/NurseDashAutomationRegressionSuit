*** Settings ***
Resource    ../Resources/POM/P_AdCommon.robot
Resource    ../Resources/POM/P_AdShift Types.robot

*** Variables ***
${Name_NewShiftType}    Shift Type Test 1
${Description_NewShiftType}     Shift type for testing 1
${ShiftType_Checeked}       //td//span[.="Shift Type Test 1"]

*** Test Cases ***
Verify that able to Create New Shift Type
    Log_In_NurseDash
    Click on SideBar Icons    ${ShiftTypes}
    wait until page contains element    ${CreateNewShiftType}
    Create New Shift Type   ${Name_NewShiftType}   ${Description_NewShiftType}
    close browser

Verify that New Shift Type Created is Exist
    Log_In_NurseDash
    Click on SideBar Icons    ${ShiftTypes}
    Check that New Shift Type Created       ${ShiftType_Checeked}
    close browser

Verify on Deleting Specific Shift Type
    Log_In_NurseDash
    Click on SideBar Icons    ${ShiftTypes}
    Delete Shift Type   ${ShiftType_Checeked}
    close browser
