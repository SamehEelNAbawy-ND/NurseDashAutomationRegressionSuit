*** Settings ***
Library    SeleniumLibrary
Resource    P_AdCommon.robot

*** Variables ***
${ShiftNumber}

${SelectAll_ShiftUnit}    //span[@class="MuiButtonBase-root MuiIconButton-root jss968 MuiCheckbox-root MuiCheckbox-colorPrimary select-all MuiIconButton-colorPrimary"]//span//input[@class="jss971"]
${SelectSpecific_ShiftUnit}

${Create_ShiftUnit}    //div//a[@href="#/ShiftUnit/create"]

${Export_ShiftUnit}    //button[@aria-label="Export"]
${Edit_SpecificShiftUnit}    //a[@href="#/ShiftUnit/${ShiftNumber}"]
${Delete_ShiftUnit}     # Need to get it by preceding or following sibilling

${Name_Create_ShiftUnit}    //div//input[@id="name"]
${Description_Create_ShiftUnit}    //div//textarea[@id="description"]

${Save_ShiftUnit}    //div//button[@aria-label="Save"]

*** Keywords ***

Create New Shift Unit
    [Arguments]     ${Name_NewShiftUnit}   ${Description_NewShiftUnit}
    Click Any Element    ${Create_ShiftUnit}
    wait until page contains element    ${Name_Create_ShiftUnit}
    input text      ${Name_Create_ShiftUnit}       ${Name_NewShiftUnit}
    input text    ${Description_Create_ShiftUnit}    ${Description_NewShiftUnit}
    Click on Specific Button    ${Save_ShiftUnit}
    wait until page contains element    //td//span[.="${Name_NewShiftUnit}"]

Verify that New Shift Type Created is Exist
    Log_In_NurseDash
    Click on SideBar Icons    ${ShiftTypes}
    Check that New Shift Type Created       ${ShiftType_Checeked}
    close browser

Verify on Deleting Specific Shift Type
    Log_In_NurseDash
    Click on SideBar Icons    ${ShiftTypes}
    Delete Shift Type ${}
    close browser
