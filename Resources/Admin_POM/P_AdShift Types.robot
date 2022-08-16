*** Settings ***
Library    SeleniumLibrary
Resource    P_AdCommon.robot

*** Variables ***
${SelectAll}    //th//span[@class="MuiButtonBase-root MuiIconButton-root jss518 MuiCheckbox-root MuiCheckbox-colorPrimary select-all MuiIconButton-colorPrimary"]

# Shifts Exist in Shift Types Table
${CFA_ShType}    //td//span[.="CFA "]
${CMA/Med-Tech_ShType}    //td//span[.="CMA/Med-Tech"]
${CNA_ShType}    //td//span[.="CNA"]
${LPN_ShType}    //td//span[.="LPN"]
${LVN_ShType}    //td//span[.="LVN"]
${RN_ShType}    //td//span[.="RN"]
${STNA_ShType}    //td//span[.="STNA"]
${Tech_ShType}    //td//span[.="Tech"]

${CreateNewShiftType}    //a[@href="#/FacilityType/create"]

${Name_Sort_ShiftTypes}    //span[@data-sort="name"]
${Description_Sort_ShiftTypes}    //span[@data-sort="description"]
${ShiftCount_Sort_ShiftTypes}    //span[@data-sort="shiftCount"]
${CreatedAt_Sort_ShiftTypes}    //span[@data-sort="createdAt"]
${Edit_Sort_ShiftTypes}     //td[.="${ShiftTypeName}"]//following-sibling::td//a[@aria-label="Edit"]
${Delete_Sort_ShiftTypes}   //td[.="${ShiftTypeName}"]//following-sibling::td//button//span//span[.="Delete"]

# After Clicking on "Edit" Button for a specific shift type
${Name_ShiftType}    //div//input[@id="name"]
${Description_ShiftType}    //div//textarea[@id="description"]
${Save_ShiftType}    //div//button[@aria-label="Save"]
${Delete_ShiftType}    //div//button[@aria-label="Delete"]

*** Keywords ***
Create New Shift Type
    [Arguments]    ${Name_NewShiftType}    ${Description_NewShiftType}
    page should contain element    ${CreateNewShiftType}
    Click Any Element    ${CreateNewShiftType}
    wait until page contains element    ${Name_ShiftType}
    input text    ${Name_ShiftType}     ${Name_NewShiftType}
    input text    ${Description_ShiftType}      ${Description_NewShiftType}
    click button    ${Save_ShiftType}

Check that New Shift Type Created
    [Arguments]    ${ShiftType_Checeked}
    wait until keyword succeeds    1000s    1s    wait until page contains element    ${ShiftType_Checeked}
    page should contain element     ${ShiftType_Checeked}

Delete Shift Type
    [Arguments]  ${ShiftTypeName}
    Click on SideBar Icons  ${ShiftTypes}
    Click Any Element  //td[.="${ShiftTypeName}"]//preceding-sibling::td//span//span//input[@type="checkbox"]
    Click Any Element  //td[.="${ShiftTypeName}"]//following-sibling::td//button//span//span[.="Delete"]
    wait until page does not contain element  //td[.="${ShiftTypeName}"]
    sleep 10s